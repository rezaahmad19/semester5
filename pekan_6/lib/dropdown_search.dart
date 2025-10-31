
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> datalist = [
    {"country": "Brazil", "id": 1},
    {"country": "Tunisia", "id": 2},
    {"country": "Canada", "id": 3},
    {"country": "India", "id": 4},
    {"country": "Indonesia", "id": 5},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DROPDOWN SEARCH"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: DropdownSearch<Map<String, dynamic>>(

          // --- INI BAGIAN YANG BERUBAH ---
          // 'mode:' dan 'showSearchBox:' (lama) diganti 'popupProps:' (baru)
          popupProps: PopupProps.modalBottomSheet(
            showSearchBox: true, // Pindahkan showSearchBox ke sini

            // Pengaturan untuk tampilan item di list
            itemBuilder: (context, item, isSelected) => ListTile(
              title: Text(item["country"].toString()),
            ),
          ),
          // --- AKHIR BAGIAN YANG BERUBAH ---

          // Sumber data
          items: datalist,

          // Tampilan untuk item yang terpilih (di kotak utama)
          dropdownBuilder: (context, selectedItem) => Text(
              selectedItem?["country"].toString() ?? "Belum pilih negara"),

          // Fungsi yang dijalankan saat item dipilih
          onChanged: (value) => print(value?["id"] ?? "Nilai kosong"),

          // Item yang terpilih saat pertama kali (default)
          selectedItem: {"country": "Canada", "id": 3},
        ),
      ),
    );
  }
}