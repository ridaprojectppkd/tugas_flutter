//import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:tugas_flutter/meet6/tugasnavigator.dart';

class tugas7new extends StatefulWidget {
  const tugas7new({super.key});

  @override
  State<tugas7new> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<tugas7new> {
  ///////////STATE SYARAT CHECKBOX
  bool _isTermsAccepted = false;
  final bool _isSwitchEnabled = false;
  bool _isDarkMode = false;
  

  @override
  Widget build(BuildContext context) {
    //  betulin dark mode
    return Scaffold(
      //////////////////bg color
      backgroundColor:
          _isDarkMode ? Color.fromARGB(255, 0, 0, 0) : Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          color: Color(0xffFFFBDE),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
        ),
        title: Center(
          child: const Text(
            'Tugas 7',
            style: TextStyle(
              fontSize: (25),
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 235, 236, 236),
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff096B68), Color(0xff129990), Color(0xff90D1CA)],
            ),
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child:Text('Menu Input', style: TextStyle(fontSize: 20)),
               ),
               ////////////////////drawer item
          ],
        ),
      ),
      
      
    
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian Checkbox Syarat & Ketentuan
            const Text(
              'Persyaratan Pendaftaran',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: _isTermsAccepted,
                  onChanged: (bool? value) {
                    setState(() {
                      _isTermsAccepted = value ?? false;
                    });
                  },
                ),
                const Text('Saya menyetujui semua persyaratan yang berlaku'),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              _isTermsAccepted
                  ? 'Lanjutkan pendaftaran diperbolehkan'
                  : 'Anda belum bisa melanjutkan',
              style: TextStyle(
                color: _isTermsAccepted ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            // Bagian Switch (sebagai perbandingan)
            const SizedBox(height: 30),

            // Tombol Submit (hanya enabled ketika checkbox dicentang)
            ElevatedButton(
              onPressed:
                  _isTermsAccepted
                      ? () {
                        // Aksi ketika tombol ditekan
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Pendaftaran dilanjutkan...'),
                            backgroundColor: Colors.green,
                          ),
                        );
                      }
                      : null,
              child: const Text('LANJUTKAN PENDAFTARAN'),
            ),
            //////////////////SWITCH
            ///
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text('Dark Mode',
            //     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
            //     color: Color(0xff129990)
            //     ),
            //     ),
            //     SizedBox(height: 20),
            //     SwitchListTile(
            //       value: _isDarkMode,
            //       onChanged: (value) {
            //         setState(() => _isDarkMode,
            //         );
            //       },
            //       title: Text('Aktifkan Dark Mode'),

            //     ),
            //     SizedBox(height: 24),
            //     Text(
            //       _isDarkMode ? 'Dark Mode' : 'Light Mode',
            //       style: TextStyle(
            //         fontSize: 16,
            //         color: _isDarkMode ? Color.fromARGB(255, 255, 255, 255) : Color.fromARGB(255, 0, 0, 0),
            //       ),
            //     )
            //   ],
            // ),
            //////////////////////SWITCH
            const Text(
              'Pengaturan Notifikasi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                Switch(
                  value: _isDarkMode,
                  onChanged: (bool value) {
                    setState(() {
                      _isDarkMode = value;
                    });
                  },
                  activeColor: Color(0xff90D1CA),
                ),
                Text(
                  'Aktifkan Mode Gelap',
                  style: TextStyle(
                    color: _isDarkMode ? Colors.white : Color(0xff096B68),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  _isDarkMode ? 'Mode Gelap Aktif' : 'Mode Terang Aktif',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color:
                        _isDarkMode
                            ? const Color.fromARGB(255, 0, 0, 0)
                            : Colors.blue,
                  ),
                ),

                // DropdownButton<String>(
                //   value: isSelected,
                //   hint: Text("Pilih Warna"),
                //   items:
                //       _colors.map((String value) {
                //         return DropdownMenuItem<String>(
                //           value: value,
                //           child: Text(value),
                //         );
                //       }).toList(),
                //   onChanged: (String? value) {
                //     setState(() {
                //       isSelected = value;
                //       // if (value == "Merah") {
                //       //   Navigator.pushNamed(context, MeetTigaA.id);
                //       // }
                //     });
                //   },
                // ),
                // Text(
                //   isSelected ?? "Belum pilih warna",
                //   style: AppStyle.fontBold(),
                // ),
                // if (isSelected == "Merah") CircularProgressIndicator(),
                // Container(
                //   height: 150,
                //   width: 150,
                //   color:
                //       isSelected == "Merah"
                //           ? Colors.red
                //           : isSelected == "Hijau"
                //           ? AppColor.army1
                //           : AppColor.blueButton,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
