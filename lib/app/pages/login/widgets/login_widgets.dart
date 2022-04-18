// ignore_for_file: unused_field, use_key_in_widget_constructors, avoid_print, void_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_login/app/pages/login/login_controller.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../navigator/app_pages.dart';

class LoginWidgets extends StatelessWidget {
  static const loginKey = Key('Login_key');
  static const emailKey = Key('Email_Key');
  static const passwordKey = Key('Password_key');
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_controller) => SafeArea(
        child: Container(
          // decoration: const BoxDecoration(image: DecorationImage(image:NetworkImage('https://wallpaperaccess.com/full/1622640.jpg'),fit: BoxFit.cover)),
          padding: const EdgeInsets.only(top: 100, left: 16, right: 16),
          width: context.width,
          height: context.height,
          child: SingleChildScrollView(
            child: Form(
              // key: _controller.loginFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  const Text(
                    "Login to PaPi's World !",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    key: emailKey,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide:
                            const BorderSide(color: Colors.green, width: 1.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide:
                            const BorderSide(color: Colors.green, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.green, width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      hintText: "Email",
                      hintStyle: const TextStyle(color: Colors.black),
                      prefixIcon: const Icon(Icons.email, color: Colors.green),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: _controller.email,
                    onSaved: (value) {
                      _controller.userEmail = value!;
                    },
                    validator: (value) {
                      return _controller.validateEmail(value!);
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    key: passwordKey,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.green, width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide:
                            const BorderSide(color: Colors.green, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.green, width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.black),
                      prefixIcon: const Icon(Icons.lock, color: Colors.green),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: _controller.pass,
                    onSaved: (value) {
                      _controller.passWord = value! as RxString;
                    },
                    onChanged: (value) {
                      return _controller.validatePassword(value);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     const Text(
                  //       'Every condition must be checked:\n',style: TextStyle(color: Colors.black),
                  //     ),
                  //     Row(
                  //       children: [
                  //         AnimatedContainer(
                  //           duration: const Duration(milliseconds: 500),
                  //           width: 20,
                  //           height: 20,
                  //           decoration: BoxDecoration(
                  //               color: _controller.strongPassword
                  //                   ? Colors.green
                  //                   : Colors.transparent,
                  //               border: _controller.strongPassword
                  //                   ? Border.all(color: Colors.transparent)
                  //                   : Border.all(color: Colors.black),
                  //               borderRadius: BorderRadius.circular(50)),
                  //           child: const Center(
                  //             child: Icon(
                  //               Icons.check,
                  //               color: Colors.black,
                  //               size: 15,
                  //             ),
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           width: 10,
                  //         ),
                  //         const Text("Contains at least 8 Characters.",style: TextStyle(color: Colors.black))
                  //       ],
                  //     ),
                  //     const SizedBox(
                  //       height: 10,
                  //     ),
                  //     Row(
                  //       children: [
                  //         AnimatedContainer(
                  //           duration: const Duration(milliseconds: 500),
                  //           width: 20,
                  //           height: 20,
                  //           decoration: BoxDecoration(
                  //               color: _controller.numLetterPassword
                  //                   ? Colors.green
                  //                   : Colors.transparent,
                  //               border: _controller.numLetterPassword
                  //                   ? Border.all(color: Colors.transparent)
                  //                   : Border.all(color: Colors.black),
                  //               borderRadius: BorderRadius.circular(50)),
                  //           child: const Center(
                  //             child: Icon(
                  //               Icons.check,
                  //               color: Colors.black,
                  //               size: 15,
                  //             ),
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           width: 10,
                  //         ),
                  //         const Text("Contains at least 1 Number.",style: TextStyle(color: Colors.black))
                  //       ],
                  //     ),
                  //     const SizedBox(
                  //       height: 10,
                  //     ),
                  //     Row(
                  //       children: [
                  //         AnimatedContainer(
                  //           duration: const Duration(milliseconds: 500),
                  //           width: 20,
                  //           height: 20,
                  //           decoration: BoxDecoration(
                  //               color: _controller.capLetterPassword
                  //                   ? Colors.green
                  //                   : Colors.transparent,
                  //               border: _controller.capLetterPassword
                  //                   ? Border.all(color: Colors.transparent)
                  //                   : Border.all(color: Colors.black),
                  //               borderRadius: BorderRadius.circular(50)),
                  //           child: const Center(
                  //             child: Icon(
                  //               Icons.check,
                  //               color: Colors.black,
                  //               size: 15,
                  //             ),
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           width: 10,
                  //         ),
                  //         const Text("Contains at least 1 Capital letter.",style: TextStyle(color: Colors.black))
                  //       ],
                  //     ),
                  //     const SizedBox(
                  //       height: 10,
                  //     ),
                  //     Row(
                  //       children: [
                  //         AnimatedContainer(
                  //           duration: const Duration(milliseconds: 500),
                  //           width: 20,
                  //           height: 20,
                  //           decoration: BoxDecoration(
                  //               color: _controller.smallLetterPassword
                  //                   ? Colors.green
                  //                   : Colors.transparent,
                  //               border: _controller.smallLetterPassword
                  //                   ? Border.all(color: Colors.transparent)
                  //                   : Border.all(color: Colors.black),
                  //               borderRadius: BorderRadius.circular(50)),
                  //           child: const Center(
                  //             child: Icon(
                  //               Icons.check,
                  //               color: Colors.black,
                  //               size: 15,
                  //             ),
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           width: 10,
                  //         ),
                  //         const Text("Contains at least 1 Small letter.",style: TextStyle(color: Colors.black))
                  //       ],
                  //     ),
                  //     const SizedBox(
                  //       height: 10,
                  //     ),
                  //     Row(
                  //       children: [
                  //         AnimatedContainer(
                  //           duration: const Duration(milliseconds: 500),
                  //           width: 20,
                  //           height: 20,
                  //           decoration: BoxDecoration(
                  //               color: _controller.specLetterPassword
                  //                   ? Colors.green
                  //                   : Colors.transparent,
                  //               border: _controller.specLetterPassword
                  //                   ? Border.all(color: Colors.transparent)
                  //                   : Border.all(color: Colors.black),
                  //               borderRadius: BorderRadius.circular(50)),
                  //           child: const Center(
                  //             child: Icon(
                  //               Icons.check,
                  //               color: Colors.black,
                  //               size: 15,
                  //             ),
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           width: 10,
                  //         ),
                  //         const Text("Contains at least 1 Special character.",style: TextStyle(color: Colors.black))
                  //       ],
                  //     ),
                  //     const SizedBox(
                  //       height: 16,
                  //     ),
                  //   ],
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Remember Me",
                        style: TextStyle(color: Colors.black),
                      ),
                      Checkbox(
                        value: _controller.isChecked,
                        onChanged: (value) {
                          print(value);
                          _controller.check(value);
                        },
                      ),
                    ],
                  ),
                  const HeightBox(10),
                  GestureDetector(
                    key: loginKey,
                    onTap: () {
                      if (/*_controller.isChecked &&*/
                          _controller.email.text.isNotEmpty &&
                          _controller.pass.text.isNotEmpty) {
                        Get.offAndToNamed(Paths.dashBoard);
                      } else {
                        return;
                      }
                      print("Login Clicked Event");
                    },
                    child: "Login"
                        .text
                        .black
                        .light
                        .xl
                        .makeCentered()
                        .box
                        .black
                        .shadowOutline(outlineColor: Colors.black)
                        .color(const Color(0xff0277bd))
                        .roundedLg
                        .make()
                        .w(150)
                        .h(40),
                  ),
                  const HeightBox(20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
