import 'package:flutter/material.dart';

  // final IconData icon;
  // final String deskripsi;
  // final String harga;
  // final String kriteriaUmur;

class TugasEmpat extends StatelessWidget {
  const TugasEmpat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Tugas 4 Formulir dan Daftar Produk",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF5409DA), Color(0xFF4E71FF)],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Rental Pacar",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5409DA),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                labelText: "Nama",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                prefixIconColor: Color(0xFF5409DA),
              ),
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
                prefixIconColor: Color(0xFF5409DA),
              ),
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                labelText: "Nomor Ponsel",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone_android),
                prefixIconColor: Color(0xFF5409DA),
              ),
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                labelText: "Deskripsi",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.description),
                prefixIconColor: Color(0xFF5409DA),
              ),
            ),
            const SizedBox(height: 20),
            // Daftar Produk
            const SewaListTile(
              icon: Icons.celebration,
              deskripsi: 'Sewa 1 jam untuk kondangan',
              harga: 'Rp 25.000',
              kriteriaUmur: '18–35 tahun',
            ),
            const SewaListTile(
              icon: Icons.directions_walk,
              deskripsi: 'Sewa 2 jam untuk ajak jalan',
              harga: 'Rp 30.000',
              kriteriaUmur: '20–40 tahun',
            ),
            const SewaListTile(
              icon: Icons.work,
              deskripsi: 'Sewa 3 jam untuk acara resmi',
              harga: 'Rp 50.000',
              kriteriaUmur: '25–45 tahun',
            ),
            const SewaListTile(
              icon: Icons.beach_access,
              deskripsi: 'Sewa 4 jam untuk liburan',
              harga: 'Rp 70.000',
              kriteriaUmur: '30–50 tahun',
            ),
            const SewaListTile(
              icon: Icons.family_restroom,
              deskripsi: 'Sewa 5 jam untuk acara keluarga',
              harga: 'Rp 90.000',
              kriteriaUmur: '35–55 tahun',
            ),
          ],
        ),
      ),
    );
  }
}
