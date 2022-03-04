import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:new_login/app/pages/login/login_presenter.dart';
// import 'package:new_login/app/pages/login/welcome_view.dart';

class HomeController extends GetxController {
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  HomePresenter homePresenter;
  HomeController(this.homePresenter);
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
    // await createBox().then((value) {
    //   var email = box1!.get('email');
    //   update();
    //   if (email != null) {
    //     Get.to(() => const WelcomeView());
    //   }
    // });
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
    if (value.isEmpty) {
      return "Provide valid Password";
    } else if (value.length <= 7) {
      strongPassword = false;
      update();
      if (!capLetterReg.hasMatch(value)) {
        capLetterPassword = false;
        update();
      } else {
        capLetterPassword = true;
        update();
      }
      if (!smallLetterReg.hasMatch(value)) {
        smallLetterPassword = false;
        update();
      } else {
        smallLetterPassword = true;
        update();
      }
      if (!numReg.hasMatch(value)) {
        numLetterPassword = false;
        update();
      } else {
        numLetterPassword = true;
        update();
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
      }
      if (!smallLetterReg.hasMatch(value)) {
        smallLetterPassword = false;
        update();
      } else {
        smallLetterPassword = true;
        update();
      }
      if (!numReg.hasMatch(value)) {
        numLetterPassword = false;
        update();
      } else {
        numLetterPassword = true;
        update();
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
