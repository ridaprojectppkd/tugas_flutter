import 'package:flutter/material.dart';
import 'package:tugas_flutter/tugas7/7flutter.dart';
import 'package:tugas_flutter/tugas7/profil.dart';

class tugas8 extends StatefulWidget {
  const tugas8({super.key});

  @override
  State<tugas8> createState() => _tugas8State();
}

class _tugas8State extends State<tugas8> {
  final List<Widget> _screen = [ProfilePage(), tugas7baru()];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
      
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: "Tugas 7"),
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
