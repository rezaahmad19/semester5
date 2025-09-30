import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar warna untuk membuat pola (Kuning, Biru, Hijau)
    final List<Color> colors = [
      Colors.yellow, Colors.blue, Colors.green,
      Colors.blue, Colors.green, Colors.yellow,
      Colors.green, Colors.yellow, Colors.blue,
      Colors.yellow, Colors.blue, Colors.green,
      Colors.blue, Colors.green, Colors.yellow,
    ];

    // Buat daftar Container sesuai dengan daftar warna
    final List<Widget> containers = List.generate(
        colors.length,
            (index) => Container(
          color: colors[index],
          // Menambahkan teks untuk debug, bisa dihapus
          // child: Center(child: Text('${index + 1}', style: TextStyle(color: Colors.black))),
        )
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Aplikasi pertamaku"),
        ), // AppBar
        body: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            crossAxisSpacing: 0.0, // Tanpa jarak horizontal
            mainAxisSpacing: 0.0,  // Tanpa jarak vertikal
          ),
          children: containers,
        ), // GridView
      ), // Scaffold
    ); // MaterialApp
  }
}