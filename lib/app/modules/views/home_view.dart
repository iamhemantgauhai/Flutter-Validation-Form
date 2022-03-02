// ignore_for_file: void_checks, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_login/app/modules/views/welcome_view.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (_controller) {
      return Scaffold(
        body: SafeArea(
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
                    Image.network(
                      "https://media.designrush.com/agencies/113271/conversions/Appscrip-(3-Embed-Technologies)-logo-profile.jpg",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Welcome to Appscrip Company",
                      style: TextStyle(fontSize: 20, color: Colors.black87),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
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
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon:
                            const Icon(Icons.email, color: Colors.green),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      controller: _controller.emailController,
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
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon: const Icon(Icons.lock, color: Colors.green),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      controller: _controller.passwordController,
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
                                      ? Border.all(color: Colors.transparent)
                                      : Border.all(color: Colors.grey.shade400),
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
                                      ? Border.all(color: Colors.transparent)
                                      : Border.all(color: Colors.grey.shade400),
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
                                      ? Border.all(color: Colors.transparent)
                                      : Border.all(color: Colors.grey.shade400),
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
                            const Text("Contains at least 1 Capital letter.")
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
                                      ? Border.all(color: Colors.transparent)
                                      : Border.all(color: Colors.grey.shade400),
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
                                      ? Border.all(color: Colors.transparent)
                                      : Border.all(color: Colors.grey.shade400),
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
                            const Text("Contains at least 1 Special character.")
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
                      onTap: () {
                        if (_controller.isChecked) {
                          Get.to(WelcomeView());
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
        ),
      );
    });
  }
}
