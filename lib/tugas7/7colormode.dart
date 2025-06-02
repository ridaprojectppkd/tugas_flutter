import 'package:flutter/material.dart';

class switchmode extends StatefulWidget {
  const switchmode({super.key});

  @override
  State<switchmode> createState() => _DarkModePageState();
}

class _DarkModePageState extends State<switchmode> {
  bool _isDarkMode = false;

  // Warna untuk tema gelap dan terang
  final Color _darkBackground = Color(0XFF2D9596);
  final Color _lightBackground = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isDarkMode ? _darkBackground : _lightBackground,
      appBar: AppBar(
        title: Center(child: const Text('Mode Gelap', style: TextStyle(color: Color(0XFFF1FADA), fontWeight: FontWeight.bold))),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Pengaturan Tema',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: _isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              color: _isDarkMode ? Colors.grey[800] : Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Switch(
                      value: _isDarkMode,
                      onChanged: (bool value) {
                        setState(() {
                          _isDarkMode = value;
                        });
                      },
                      activeColor: Color(0xff2D9596),
                      activeTrackColor: Color(0xffF1FADA),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Aktifkan Mode Gelap',
                      style: TextStyle(
                        fontSize: 18,
                        color: _isDarkMode ? Colors.white : Color(0xff265073),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Center(
                child: Text(
                  _isDarkMode ? 'Mode Gelap Aktif' : 'Mode Terang Aktif',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: _isDarkMode ? Color(0xffF1FADA): Color(0xff2D9596),
                  ),
                ),
              ),
            ),
            // Contoh komponen lain yang menyesuaikan tema
            // Card(
            //   color: _isDarkMode ? Colors.grey[800] : Colors.white,
            //   child: ListTile(
            //     leading: Icon(
            //       Icons.lightbulb,
            //       color: _isDarkMode ? Colors.yellow : Colors.orange,
            //     ),
            //     // title: Text(
            //     //   'Contoh Komponen',
            //     //   style: TextStyle(
            //     //     color: _isDarkMode ? Colors.white : Colors.black,
            //     //   ),
            //     // ),
            //     // subtitle: Text(
            //     //   'Komponen ini menyesuaikan dengan tema',
            //     //   style: TextStyle(
            //     //     color: _isDarkMode ? Colors.grey[400] : Colors.grey[600],
            //     //   ),
            //     // ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}