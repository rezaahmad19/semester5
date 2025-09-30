import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Kode dari gambar Anda dimulai di sini
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Aplikasi Pertamaku"),
        ), // AppBar
        body: Column(
          children: [
            Container(
              width: 90,
              height: 90,
              color: Colors.blue,
              child: const Center(child: Text("1")),
            ), // Container
            Container(
              width: 90,
              height: 90,
              color: Colors.green,
              child: const Center(child: Text("2")),
            ), // Container
            Container(
              width: 90,
              height: 90,
              color: Colors.yellow,
              child: const Center(child: Text("3")),
            ), // Container
          ],
        ),
      ), // Scaffold
    ); // MaterialApp
  }
}