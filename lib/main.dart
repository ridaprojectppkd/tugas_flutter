import 'package:flutter/material.dart';
import 'package:tugas_flutter/meet_12/met_12b.dart';
import 'package:tugas_flutter/meet_16/login_screen.dart';
import 'package:tugas_flutter/meet_16/register_screen%20copy.dart';
import 'package:tugas_flutter/tugas11/tugas11.dart';
// import 'package:tugas_flutter/tugas11/tugas11.dart';
// import 'package:tugas_flutter/meet6/7flutter.dart';
// import 'package:tugas_flutter/meet6/tugas7flutter.dart';

// Import halaman yang digunakan

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
        '/': (context) => TugasSebelas(),
        // '/': (context) => const SplashScreen(),
        // '/login': (context) => LoginScreenApp(),
        // '/Tugas5': (context) => Tugas5(),
        // '/Tugas6': (context) => MeetEmpatA(),
        // '/Tugas12': (context) => Meet12AInputWidget(),
        LoginScreenApp.id: (context) => LoginScreenApp(), ///////////meet 16
        RegisterScreenApp.id:(context) => RegisterScreenApp(), ///////////meet16
        MeetDuaBelasB.id: (context) => MeetDuaBelasB(),
        
        // '/Tugas7' : (context) => tugas7()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
