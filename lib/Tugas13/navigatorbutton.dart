import 'package:flutter/material.dart';
import 'package:tugas_flutter/Tugas13/Regis_login/login13.dart';
import 'package:tugas_flutter/Tugas13/Tentang_Universitas/aboutpolimed13.dart';
import 'package:tugas_flutter/tugas7/7flutter.dart';
import 'package:tugas_flutter/tugas7/profil.dart';

class TugasTigaBelas extends StatefulWidget {
  const TugasTigaBelas({super.key});

  @override
  State<TugasTigaBelas> createState() => _TugasTigaBelas();
}

class _TugasTigaBelas extends State<TugasTigaBelas> {
  final List<Widget> _screen = [LoginScTigas(), TentangPolimediaPage()];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
      
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
        ],
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
      body: _screen[_selectedIndex],
    );
  }
}
