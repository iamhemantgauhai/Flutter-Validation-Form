// ignore_for_file: unused_field, use_key_in_widget_constructors, avoid_print, void_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_login/app/pages/login/login_controller.dart';
import 'package:new_login/app/pages/dashboard/dashboard_view.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginWidgets extends StatelessWidget {
  final safeAreaKey = GlobalKey<FormState>();
  static const loginKey = Key('Login_key');
  static const emailKey = Key('Email_Key');
  static const passwordKey = Key('Password_key');
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        builder: (_controller) => SafeArea(
              child: Container(
                margin: const EdgeInsets.only(top: 60, left: 16, right: 16),
                width: context.width,
                height: context.height,
                child: SingleChildScrollView(
                  child: Form(
                    key: _controller.loginFormKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        const Text(
                          'Login Here',
                          style: TextStyle(fontSize: 25, color: Colors.black87),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Login to Appscrip Company",
                          style: TextStyle(fontSize: 20, color: Colors.black87),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          key: emailKey,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(
                                  color: Colors.green, width: 1.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(
                                  color: Colors.green, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.green, width: 1.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            hintText: "Email",
                            hintStyle: const TextStyle(color: Colors.grey),
                            prefixIcon:
                                const Icon(Icons.email, color: Colors.green),
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
                              borderSide: const BorderSide(
                                  color: Colors.green, width: 1.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(
                                  color: Colors.green, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.green, width: 1.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            hintText: "Password",
                            hintStyle: const TextStyle(color: Colors.grey),
                            prefixIcon:
                                const Icon(Icons.lock, color: Colors.green),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Every condition must be checked:\n',
                            ),
                            Row(
                              children: [
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: _controller.strongPassword
                                          ? Colors.green
                                          : Colors.transparent,
                                      border: _controller.strongPassword
                                          ? Border.all(
                                              color: Colors.transparent)
                                          : Border.all(
                                              color: Colors.grey.shade400),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("Contains at least 8 Characters.")
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: _controller.numLetterPassword
                                          ? Colors.green
                                          : Colors.transparent,
                                      border: _controller.numLetterPassword
                                          ? Border.all(
                                              color: Colors.transparent)
                                          : Border.all(
                                              color: Colors.grey.shade400),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("Contains at least 1 Number.")
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: _controller.capLetterPassword
                                          ? Colors.green
                                          : Colors.transparent,
                                      border: _controller.capLetterPassword
                                          ? Border.all(
                                              color: Colors.transparent)
                                          : Border.all(
                                              color: Colors.grey.shade400),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                    "Contains at least 1 Capital letter.")
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: _controller.smallLetterPassword
                                          ? Colors.green
                                          : Colors.transparent,
                                      border: _controller.smallLetterPassword
                                          ? Border.all(
                                              color: Colors.transparent)
                                          : Border.all(
                                              color: Colors.grey.shade400),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("Contains at least 1 Small letter.")
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: _controller.specLetterPassword
                                          ? Colors.green
                                          : Colors.transparent,
                                      border: _controller.specLetterPassword
                                          ? Border.all(
                                              color: Colors.transparent)
                                          : Border.all(
                                              color: Colors.grey.shade400),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                    "Contains at least 1 Special character.")
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Remember Me",
                              style: TextStyle(color: Colors.grey),
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
                            if (_controller.isChecked &&
                                _controller.email.text.isNotEmpty &&
                                _controller.pass.text.isNotEmpty) {
                              Get.to(const DashBoardView());
                            } else {
                              return;
                            }
                            print("Login Clicked Event");
                            _controller.login();
                            _controller.getData();
                          },
                          child: "Login"
                              .text
                              .white
                              .light
                              .xl
                              .makeCentered()
                              .box
                              .white
                              .shadowOutline(outlineColor: Colors.grey)
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
            ));
  }
}
