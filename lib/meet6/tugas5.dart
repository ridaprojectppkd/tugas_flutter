import 'package:flutter/material.dart';
import 'dart:math';

class Tugas5 extends StatelessWidget {
  const Tugas5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 5 - Halaman Interaksi',

      theme: ThemeData(primarySwatch: Colors.blue),
      home: const InteractivePage(),
    );
  }
}

class InteractivePage extends StatefulWidget {
  const InteractivePage({super.key});

  @override
  State<InteractivePage> createState() => _InteractivePageState();
}

class _InteractivePageState extends State<InteractivePage> {
  String displayedText = '';
  bool isLiked = false;
  bool showDescription = false;
  int counter = 0;
  int nilaiTambah = 0;
  bool showBoxText = false;
  List<Widget> loveEmojis = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: const Text(
            'Halaman Interaktif 🦄🐋',
            style: TextStyle(
              fontSize: (25),
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 234, 239, 239),
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.green,
                Colors.blue,
                Color.fromARGB(255, 211, 5, 252),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF40E0D0), // Turquoise background
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ElevatedButton
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        /////evalated button tuh cuman bikin text ada bayangan
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              displayedText = 'Rida Dzakiyyah';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                          ),
                          child: const Text(
                            'Tampilkan Nama',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          displayedText,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),

                  // IconButton
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: isLiked ? Colors.red : Colors.grey,
                            ////////////mengubah warna ikon antara merah (disukai) dan abu-abu (tidak disukai)
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              isLiked = !isLiked;
                              if (isLiked) {
                                ////ISLIKED membalik nilai boolean saat tombol ditekan
                                displayedText = 'Disukai 💖';
                                loveEmojis = List.generate(
                                  30,
                                  (index) => Positioned(
                                    //////Left Random nextDouble: Posisi horizontal acak (kiri-kanan)
                                    left:
                                        Random().nextDouble() *
                                        MediaQuery.of(context).size.width,
                                    //////////Top Random nextdouble Posisi vertikal acak (atas-bawah)
                                    top:
                                        Random().nextDouble() *
                                        MediaQuery.of(context).size.height,
                                    child: Text(
                                      '💖',
                                      style: TextStyle(
                                        fontSize:
                                            /////Fungsi ini menghasilkan angka desimal acak antara 0.0 (termasuk) sampai 1.0
                                            ///Kode ini digunakan untuk menghasilkan ukuran font acak antara 20 hingga 40 pixel untuk emoji hati
                                            ///////desimal 0.5 * 20 = 10.0
                                            ///10.0 + 20 = 30.0
                                            Random().nextDouble() * 20 + 20,
                                      ),
                                    ),
                                  ),
                                );
                                Future.delayed(
                                  const Duration(milliseconds: 1500),
                                  () {
                                    setState(() {
                                      loveEmojis = [];
                                    });
                                  },
                                );
                              } else {
                                displayedText = '';
                              }
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Tekan hati',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),

                  // TextButton
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    ////////////////////////column dibungkus center agar ditengah begitu juga yang lain
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                showDescription = !showDescription;
                              });
                            },
                            child: const Text(
                              'Lihat Selengkapnya',
                              style: TextStyle(color: Colors.teal),
                            ),
                          ),
                          if (showDescription)
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                'wewok de tok not onli but de tok.',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // InkWell
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    //////column dibungkus center
                    child: Center(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                showBoxText = !showBoxText;
                              });
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.blue),
                              ),
                              child: Center(
                                child: Text(
                                  showBoxText
                                      ? 'Kotak disentuh'
                                      : 'Sentuh saya',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Sentuh kotak biru di atas',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // GestureDetector
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onLongPress: () {
                            setState(() {
                              nilaiTambah--;
                            });
                          },
                          onDoubleTap: () {
                            setState(() {
                              nilaiTambah = 0;
                            });
                          },
                          onTap: () {
                            setState(() {
                              nilaiTambah++;
                            });
                          },
                          child: Center(
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 80, 226, 239),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  /////////////ikon gambar
                                  children: [
                                    const Icon(
                                      Icons.image,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "Nilai: $nilaiTambah",
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Coba: tekan sekali, dua kali, atau tahan lama',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'tekan sekali: nambah 1',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'tekan dua kali: reset ke 0',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'tahan lama: minus -1',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'counter: $counter',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Color(0XFF37B7C3)),
                  ),
                ],
              ),
            ),
            ...loveEmojis,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        tooltip: 'Tambah Counter',
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      /////////mini enddocked itu ada di kanan bawah
    );
  }
}
