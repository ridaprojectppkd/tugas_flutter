import 'package:flutter/material.dart';
import 'package:tugas_flutter/tugas14/14list.dart';
import 'package:tugas_flutter/tugas14/14listdynamic.dart';
import 'package:tugas_flutter/tugas14/14model.dart';
import 'package:tugas_flutter/meet_14/list_in_map_widget.dart.dart';
import 'package:tugas_flutter/meet_14/list_widget.dart';
import 'package:tugas_flutter/meet_14/map_widget.dart';
import 'package:tugas_flutter/meet_14/model_widget.dart';

class TugasEmpatBelas extends StatelessWidget {
  const TugasEmpatBelas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "Assets/image/bgpurple.jpg",
            ), // Ganti dengan path gambar Anda
            fit: BoxFit.cover, // Menyesuaikan gambar ke seluruh layar
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Tambahkan Container untuk membuat latar belakang semi-transparan pada tombol
              Center(
                child: Text(
                  'JUAL SPAREPART HONDA😘🥰',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5), // Warna semi-transparan
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tugas14flutter(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          255,
                          255,
                          255,
                        ).withOpacity(0.8),
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 15,
                        ),
                      ),
                      child: Text("List", style: TextStyle(fontSize: 18)),
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListMapDynamic(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          255,
                          255,
                          255,
                        ).withOpacity(0.8),
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 15,
                        ),
                      ),
                      child: Text(
                        "ListMapDynamic",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AksesorisMobilPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          255,
                          255,
                          255,
                        ).withOpacity(0.8),
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 15,
                        ),
                      ),
                      child: Text("Model", style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
