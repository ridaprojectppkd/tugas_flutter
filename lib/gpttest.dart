import 'package:flutter/material.dart';
import 'dart:math';

class Gpttest extends StatelessWidget {
  const Gpttest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 5 - Halaman Interaksi',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const InteractivePage()
      ,
      
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

  void _showImageDialog() {
    // Implement your image dialog logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Interaktif')),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              
              children: [
                // ElevatedButton
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          displayedText = 'Rida Dzakiyyah';
                        });
                      },
                      child: const Text('Tampilkan Nama'),
                    ),
                    const SizedBox(width: 20),
                    Text(displayedText),
                  ],
                ),
                const SizedBox(height: 30),

                // IconButton
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: isLiked ? Colors.red : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          isLiked = !isLiked;
                          if (isLiked) {
                            displayedText = 'Disukai 💖';
                            loveEmojis = List.generate(
                              30,
                              (index) => Positioned(
                                left: Random().nextDouble() * MediaQuery.of(context).size.width,
                                top: Random().nextDouble() * MediaQuery.of(context).size.height,
                                child: Text(
                                  '💖',
                                  style: TextStyle(
                                    fontSize: Random().nextDouble() * 20 + 20,
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
                    const Text('Tekan hati'),
                  ],
                ),
                const SizedBox(height: 30),

                // TextButton
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          showDescription = !showDescription;
                        });
                      },
                      child: const Text('Lihat Selengkapnya'),
                    ),
                    if (showDescription)
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('wewok de tok not onli but de tok.'),
                      ),
                  ],
                ),
                const SizedBox(height: 30),

                // InkWell
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          showBoxText = !showBoxText;
                        });
                        debugPrint('Kotak disentuh');
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.blue[100],
                        child: Center(
                          child: Text(
                            showBoxText ? 'Kotak disentuh' : '',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('Sentuh kotak biru di atas'),
                  ],
                ),
                const SizedBox(height: 30),

                // GestureDetector
                Column(
                  children: [
                    GestureDetector(
                      onLongPress: () {
                        debugPrint("tekan lama");
                        setState(() {
                          nilaiTambah--;
                        });
                      },
                      onDoubleTap: () {
                        debugPrint("tekan dua kali");
                        setState(() {
                          nilaiTambah = 0;
                        });
                      },
                      onTap: () {
                        debugPrint("Saya tekan disini");
                        setState(() {
                          nilaiTambah++;
                        });
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.image, size: 40, color: Colors.white),
                              const SizedBox(height: 10),
                              Text(
                                "Nilai: $nilaiTambah",
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),




                        
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('Coba: tekan sekali, dua kali, atau tahan lama'),
                    const Text('tekan sekali: nambah 1'),
                    const Text('tekan dua kali: reset ke 0'),
                    const Text('tahan lama: minus -1'),
                      Text('counter: $counter', style: const TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
          ),
          ...loveEmojis,
        ],
      
      ),

////////////////////////////floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        tooltip: 'Tambah Counter',
        child: const Icon(Icons.add),

        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      
    );
  }
}