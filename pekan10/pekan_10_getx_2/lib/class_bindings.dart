import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

// --- Controller A ---
class ControllerA extends GetxController {
  var valueA = 'A'.obs;
}

// --- Controller B ---
class ControllerB extends GetxController {
  var valueB = 'B'.obs;
}

// --- Main App ---
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          binding: BindingsBuilder(() {
            // Menyediakan beberapa dependency dalam satu binding
            Get.put(ControllerA());
            Get.put(ControllerB());
          }),
        ),
      ],
    );
  }
}

// --- UI: HomePage ---
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Class Bindings dengan GetX")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Mengambil instance ControllerA dan menampilkan valueA
            Text("Value A: ${Get.find<ControllerA>().valueA}"),
            // Mengambil instance ControllerB dan menampilkan valueB
            Text("Value B: ${Get.find<ControllerB>().valueB}"),
          ],
        ),
      ),
    );
  }
}