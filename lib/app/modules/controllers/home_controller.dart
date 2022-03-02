import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:new_login/app/modules/views/welcome_view.dart';

class HomeController extends GetxController {
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;
  Box? box1;
  var userEmail = '';
  var passWord = ''.obs;
  bool isChecked = false;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool smallLetterPassword = false;
  bool capLetterPassword = false;
  bool numLetterPassword = false;
  bool specLetterPassword = false;
  bool strongPassword = false;
  bool displayText = false;
  RegExp numReg = RegExp(r".*[0-9].*");
  RegExp specReg = RegExp(r".*[!@#\$&*~].*");
  RegExp capLetterReg = RegExp(r".*[A-Z].*");
  RegExp smallLetterReg = RegExp(r".*[a-z].*");

  @override
  void onInit() async {
    super.onInit();
    await createBox().then((value) {
      var email = box1!.get('email');
      update();
      if (email != null) {
        Get.to(() => WelcomeView());
      }
    });
    emailController = TextEditingController();
    passwordController = TextEditingController();
    update();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  validatePassword(String value) {
    if (value.length <= 7) {
      strongPassword = false;
      if (!capLetterReg.hasMatch(value)) {
        capLetterPassword = false;
      } else {
        capLetterPassword = true;
      }
      if (!smallLetterReg.hasMatch(value)) {
        smallLetterPassword = false;
      } else {
        smallLetterPassword = true;
      }
      if (!numReg.hasMatch(value)) {
        numLetterPassword = false;
      } else {
        numLetterPassword = true;
      }
      if (!specReg.hasMatch(value)) {
        specLetterPassword = false;
      } else {
        specLetterPassword = true;
      }
    } else if (value.length >= 7) {
      strongPassword = true;
      if (!capLetterReg.hasMatch(value)) {
        capLetterPassword = false;
      } else {
        capLetterPassword = true;
      }
      if (!smallLetterReg.hasMatch(value)) {
        smallLetterPassword = false;
      } else {
        smallLetterPassword = true;
      }
      if (!numReg.hasMatch(value)) {
        numLetterPassword = false;
      } else {
        numLetterPassword = true;
      }
      if (!specReg.hasMatch(value)) {
        specLetterPassword = false;
      } else {
        specLetterPassword = true;
      }
      update();
    }
  }

  void check(value) {
    isChecked = value;
    update();
  }

  Future<void> createBox() async {
    box1 = await Hive.openBox("loginData");
    getData();
  }

  void getData() async {
    if (box1!.get('email') != null) {
      email.text = box1!.get('email');
      isChecked = true;
    }
    if (box1!.get('pass') != null) {
      pass.text = box1!.get('pass');
      isChecked = true;
    }
    update();
  }

  void login() {
    if (isChecked) {
      box1!.put('email', email.text);
      box1!.put('pass', pass.text);
    }
  }
}
