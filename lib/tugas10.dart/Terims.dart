import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class terimakasi extends StatelessWidget {
  final String? nama;
  final String? kota;
  const terimakasi({super.key, required this.nama, required this.kota});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFE6521F), Color(0xFFFB9E3A)],
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              // color: Color(0xffE6521F),
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xffEA2F14), Color(0xffFB9E3A)],
              ),
            ),
            child: Text(
              'Terima Kasih, $nama asal kota $kota telah mendaftar form ini😁',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
