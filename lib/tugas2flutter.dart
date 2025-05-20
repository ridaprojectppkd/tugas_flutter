import 'package:flutter/material.dart';

class TugasDua extends StatelessWidget {
  const TugasDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProfilLengkapPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilLengkapPage extends StatelessWidget {
  const ProfilLengkapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        title: const Text("Profil Lengkap"),
        backgroundColor: Colors.blueAccent,
      ),



      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Baris 1 - Nama lengkap
        const SizedBox(height: 20),
Center(
  child: Column(
    children: [
     Container(
  width: 120,
  height: 120,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: const DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage('assets/images/ridaprofil.jpg'),
    ),
    border: Border.all(color: Colors.blueAccent, width: 3),
  ),
),

      const SizedBox(height: 12),
      const Text(
        "Rida Dzakiyyah",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
        ),
      ),
    ],
  ),
),


          // Baris 2 - Email
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: EmailContainer(),
          ),

          // Baris 3 - Nomor Telepon
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: PhoneContainer(),
          ),

          const SizedBox(height: 20),

          // Baris 4 - Dua kotak sejajar (Postingan & Followers)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: Colors.lightBlue[100],
                    child: const Center(
                      child: Text(
                        "Postingan",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: Colors.lightGreen[100],
                    child: const Center(
                      child: Text(
                        "Pengikut",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Baris 5 - Deskripsi Profil
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Penulis dan seniman visual yang menyukai alam, musik, dan sastra. Aktif dalam kegiatan sosial dan lingkungan.",
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.justify,
            ),
          ),

          const SizedBox(height: 30),

          // Baris 6 - Hiasan visual
          Container(
            height: 50,
            color: Colors.blueAccent.withOpacity(0.2),
            child: const Center(
              child: Text(
                "Terima kasih telah mengunjungi profil saya!",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EmailContainer extends StatelessWidget {
  const EmailContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.email, color: Colors.blue),
        SizedBox(width: 10),
        Text(
          "dewi@email.com",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}

class PhoneContainer extends StatelessWidget {
  const PhoneContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.phone, color: Colors.green),
        SizedBox(width: 10),
        Text(
          "0812-3456-7890",
          style: TextStyle(fontSize: 16),
        ),
        Spacer(),
      ],
    );
  }
}