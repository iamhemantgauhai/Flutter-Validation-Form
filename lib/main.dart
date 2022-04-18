// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app/navigator/app_pages.dart';

void main() async {
  await Hive.initFlutter();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Papi Application",
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
    ),
  );
}
