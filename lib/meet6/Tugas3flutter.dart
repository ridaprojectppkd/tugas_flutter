import 'package:flutter/material.dart';

class TugasTiga extends StatelessWidget {
  const TugasTiga({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      const Color(0xFF5409DA), // ungu tua
      const Color(0xFF4E71FF), // biru terang
      const Color(0xFF8DD8FF), // biru muda
      const Color(0xFFBBFBFF), // biru sangat muda
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Tugas 3 Formulir dan Galeri",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF5409DA),
                Color(0xFF4E71FF),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Our Profile 😎",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5409DA),
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Text Field Nama
            const TextField(
              decoration: InputDecoration(
                labelText: "Nama",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                prefixIconColor: Color(0xFF5409DA),
              ),
            ),
            const SizedBox(height: 12),

            // Text Field Email
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
                prefixIconColor: Color(0xFF5409DA),
              ),
            ),
            const SizedBox(height: 12),

            // Text Field Nomor Ponsel
            const TextField(
              decoration: InputDecoration(
                labelText: "Nomor Ponsel",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone_android),
                prefixIconColor: Color(0xFF5409DA),
              ),
            ),
            const SizedBox(height: 12),

            // Text Field Deskripsi
            const TextField(
              decoration: InputDecoration(
                labelText: "Deskripsi",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.description),
                prefixIconColor: Color(0xFF5409DA),
              ),
            ),
            const SizedBox(height: 20),

            // Kalimat keren
            const Text(
              "We wok de tok not onli tok de tok.",
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 86, 9, 218),
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),

            const Text(
              "Galeri Gambar",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: List.generate(6, (index) {
                final color = colors[index % colors.length];
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Gambar ${index + 1}',
                          style: const TextStyle(
                            color: Color(0xFF5409DA),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
