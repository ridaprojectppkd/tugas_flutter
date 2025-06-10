import 'package:flutter/material.dart';
import 'package:tugas_flutter/Tugas11/tugas11n.dart';
import 'package:tugas_flutter/Tugas12/tugas12n.dart';
import 'package:tugas_flutter/Tugas13/Listmahasiswa/List_siswa13.dart';
import 'package:tugas_flutter/Tugas13/Tambah_data/tugas11n.dart';
import 'package:tugas_flutter/Tugas13/Tentang_Universitas/aboutpolimed13.dart';
import 'package:tugas_flutter/Tugas13/Tentang_Universitas/perbandingan.dart';
import 'package:tugas_flutter/Tugas13/Regis_login/login13.dart';
import 'package:tugas_flutter/Tugas13/drawer.dart';
import 'package:tugas_flutter/Tugas13/navigatorbutton.dart';
import 'package:tugas_flutter/Tugas13/profil.dart';
import 'package:tugas_flutter/meet_12/met_12b.dart';
import 'package:tugas_flutter/meet_16/login_screen.dart';
import 'package:tugas_flutter/meet_16/register_screen%20copy.dart';

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
        '/': (context) => TugasTigaBelas(),
        // '/': (context) => const SplashScreen(),
        // '/login': (context) => LoginScreenApp(),
        // '/Tugas5': (context) => Tugas5(),
        // '/Tugas6': (context) => MeetEmpatA(),
        // '/Tugas12': (context) => Meet12AInputWidget(),
        LoginScreenApp.id: (context) => Tugas11b(), ///////////meet 16
        RegisterScreenApp.id:
            (context) => RegisterScreenApp(), ///////////meet16
        MeetDuaBelasB.id: (context) => MeetDuaBelasB(),

        // '/Tugas7' : (context) => tugas7()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
