import 'package:flutter/material.dart';

void main() {
  runApp(HaloDuniaku());
}

class HaloDuniaku extends StatelessWidget {
  const HaloDuniaku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Aplikasi pertamaku"),
        ), // AppBar
        body: Center(
          child: Image(
            image: NetworkImage("https://images.squarespace-cdn.com/content/v1/5af1298bfcf7fd60f31f66bd/96ffce43-3fc3-49d2-9ec2-c8da0dbf459f/SPONGEBOB+BIKIN+ANAK+LEBIH+PINTAR.png"),
          ),
          //untuk menampilkan gambar, syarat harus terkoneksi internet
        ), // Center, Scaffold, MaterialApp
      ),
    );
  }
}