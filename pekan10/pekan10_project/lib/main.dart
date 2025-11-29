// Lib/main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Task Management',
      // UBAH DARI: initialRoute: '/',
      // MENJADI:
      initialRoute: Routes.HOME, // Pastikan import routes/app_pages.dart
      getPages: AppPages.pages,
    ),
  );
}
