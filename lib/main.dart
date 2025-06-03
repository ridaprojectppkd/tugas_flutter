import 'package:flutter/material.dart';
import 'package:tugas_flutter/Materi/meet_4A.dart';
import 'package:tugas_flutter/meet_14/meet_14a.dart';
import 'package:tugas_flutter/tugas10.dart/tugas_10.flutter.dart';
import 'package:tugas_flutter/tugas9/tugas9flutter.dart';
// import 'package:tugas_flutter/meet6/7flutter.dart';
// import 'package:tugas_flutter/meet6/tugas7flutter.dart';
import 'package:tugas_flutter/tugas7/tugas8.dart';
import 'package:tugas_flutter/meet_12/meet_12a.dart';

// Import halaman yang digunakan
import 'package:tugas_flutter/meet6/tugas5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Sesuaikan tema di sini jika dibutuhkan
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Tugas10(),
        '/Tugas5': (context) => Tugas5(),
        '/Tugas6': (context) => MeetEmpatA(),
        '/Tugas12': (context) => Meet12AInputWidget(),
        // '/Tugas7' : (context) => tugas7()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
