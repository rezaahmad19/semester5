import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Aplikasi Pertamaku"),
        ),
        body: Stack(
          children: [
            Container(
              width: 125,
              height: 125,
              color: Colors.blue,
              child: const Center(child: Text("1")),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: const Center(child: Text("2")),
            ),
            Container(
              width: 75,
              height: 75,
              color: Colors.yellow,
              child: const Center(child: Text("3")),
            ),
          ],
        ),
      ),
    );
  }
}