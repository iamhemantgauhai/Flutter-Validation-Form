import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;
  late Box box1;
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
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    createBox();
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
      update();
      if (!capLetterReg.hasMatch(value)) {
        capLetterPassword = false;
        update();
      } else {
        capLetterPassword = true;
        update();
        return "Not valid password";
      }
      if (!smallLetterReg.hasMatch(value)) {
        smallLetterPassword = false;
        update();
      } else {
        smallLetterPassword = true;
        update();
        return "Not valid password";
      }
      if (!numReg.hasMatch(value)) {
        numLetterPassword = false;
        update();
      } else {
        numLetterPassword = true;
        update();
        return "Not valid password";
      }
      if (!specReg.hasMatch(value)) {
        specLetterPassword = false;
        update();
      } else {
        specLetterPassword = true;
        update();
      }
    } else if (value.length >= 7) {
      strongPassword = true;
      update();
      if (!capLetterReg.hasMatch(value)) {
        capLetterPassword = false;
        update();
      } else {
        capLetterPassword = true;
        update();
        return "Not valid password";
      }
      if (!smallLetterReg.hasMatch(value)) {
        smallLetterPassword = false;
        update();
      } else {
        smallLetterPassword = true;
        update();
        return "Not valid password";
      }
      if (!numReg.hasMatch(value)) {
        numLetterPassword = false;
        update();
      } else {
        numLetterPassword = true;
        update();
        return "Not valid password";
      }
      if (!specReg.hasMatch(value)) {
        specLetterPassword = false;
        update();
      } else {
        specLetterPassword = true;
        update();
      }
    }
  }

  void check(value) {
    isChecked = value;
    update();
  }

  void createBox() async {
    box1 = await Hive.openBox("loginData");
    getData();
  }

  void getData() async {
    if (box1.get('email') != null) {
      email.text = box1.get('email');
      isChecked = true;
      update();
    }
    if (box1.get('pass') != null) {
      pass.text = box1.get('pass');
      isChecked = true;
      update();
    }
  }

  void login() {
    if (isChecked) {
      box1.put('email', email.text);
      box1.put('pass', pass.text);
    }
  }
}
