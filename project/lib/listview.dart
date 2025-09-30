import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Aplikasi pertamaku"),
        ), // AppBar
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            // Container 1: Merah Muda
            Container(
              width: 150,
              height: 150,
              color: Colors.red.shade100,
              child: Center(child: Text("Item 1")),
            ),
            // Container 2: Merah Muda Gelap
            Container(
              width: 150,
              height: 150,
              color: Colors.blue.shade300,
              child: Center(child: Text("Item 2")),
            ),
            // Container 3: Biru Muda
            Container(
              width: 150,
              height: 150,
              color: Colors.green.shade100,
              child: Center(child: Text("Item 3")),
            ),
            // Container 4: Biru Gelap
            Container(
              width: 150,
              height: 150,
              color: Colors.yellow.shade300,
              child: Center(child: Text("Item 4", style: TextStyle(color: Colors.white))),
            ),
            // Container 5: Hijau Muda
            Container(
              width: 150,
              height: 150,
              color: Colors.green.shade100,
              child: Center(child: Text("Item 5")),
            ),
            // Container 6: Hijau Gelap
            Container(
              width: 150,
              height: 150,
              color: Colors.green.shade300,
              child: Center(child: Text("Item 6")),
            ),
            // Container 7: Oranye Muda
            Container(
              width: 150,
              height: 150,
              color: Colors.orange.shade100,
              child: Center(child: Text("Item 7")),
            ),
            // Container 8: Oranye Gelap
            Container(
              width: 150,
              height: 150,
              color: Colors.orange.shade300,
              child: Center(child: Text("Item 8")),
            ),
          ],
        ), // ListView
      ), // Scaffold
    ); // MaterialApp
  }
}