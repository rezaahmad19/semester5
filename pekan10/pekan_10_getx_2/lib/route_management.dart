import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // PENTING: Dalam praktik nyata, untuk menggunakan fitur navigasi GetX (Get.to),
    // sebaiknya ganti 'MaterialApp' menjadi 'GetMaterialApp'.
    // Kode di bawah ini disalin persis sesuai gambar (menggunakan MaterialApp).
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigasi dengan GetX")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Pindah ke halaman kedua menggunakan GetX
            Get.to(SecondPage());
          },
          child: Text("Pindah ke Halaman Kedua"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Kedua")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Kembali ke halaman pertama
            Get.back();
          },
          child: Text("Kembali ke Halaman Pertama"),
        ),
      ),
    );
  }
}