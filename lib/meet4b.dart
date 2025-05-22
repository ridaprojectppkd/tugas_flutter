import 'package:flutter/material.dart';

class Meet4b extends StatelessWidget {
  const Meet4b({super.key}); // nama konstruktor harus sesuai dengan nama class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "meet4b",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFF8DD8F), // warna diperbaiki, 0xFF + kode hex
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 24), // gunakan SizedBox, bukan SidesBox
            /////cara buat text dalam box
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: "Masukan Email",
                // hintStyle: TextStyle(fontSize: 12),
                filled: true,
                fillColor: Color(0xffD2D0A0),
                border: OutlineInputBorder( // perhatikan kapitalisasi
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
