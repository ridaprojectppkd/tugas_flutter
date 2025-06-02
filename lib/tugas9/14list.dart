import 'package:flutter/material.dart';

class Tugas14flutter extends StatefulWidget {
  const Tugas14flutter({super.key});

  @override
  State<Tugas14flutter> createState() => _Tugas14flutterState();
}

class _Tugas14flutterState extends State<Tugas14flutter> {
  final List<String> kategori = [
    "Buah-buahan",
    "Sayuran",
    "Elektronik",
    "Pakaian Pria",
    "Pakaian Wanita",
    "Alat Tulis Kantor",
    "Buku & Majalah",
    "Peralatan Dapur",
    "Makanan Ringan",
    "Minuman",
    "Mainan Anak",
    "Peralatan Olahraga",
    "Produk Kesehatan",
    "Kosmetik",
    "Obat-obatan",
    "Aksesoris Mobil",
    "Perabot Rumah",
    "Sepatu & Sandal",
    "Barang Bekas",
    "Voucher & Tiket",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "List",
            style: TextStyle(
              color: Color(0xff5409DA),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: kategori.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(
                  "${index + 1} ${kategori[index]}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
