import 'package:flutter/material.dart';
import 'package:tugas_flutter/Materi/meet_4A.dart';

// Import halaman yang digunakan
import 'package:tugas_flutter/meet6/tugasnavigator.dart';
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
        '/': (context) => const LoginScreen(),
        '/Tugas5': (context) =>  Tugas5(),
        '/Tugas6': (context) => MeetEmpatA(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
