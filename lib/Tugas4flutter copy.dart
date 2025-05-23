import 'package:flutter/material.dart';

class TugasEmpattrial extends StatelessWidget {
  const TugasEmpattrial ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Tugas 4 Formulir dan Daftar Produk",
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
              colors: [Color(0xFF5409DA), Color(0xFF4E71FF)],
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
                "Rental Pacar  🤗🤩🤑🤑",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5409DA),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                labelText: "Nama",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                prefixIconColor: Color(0xFF5409DA),
              ),
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
                prefixIconColor: Color(0xFF5409DA),
              ),
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                labelText: "Nomor Ponsel",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone_android),
                prefixIconColor: Color(0xFF5409DA),
              ),
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                labelText: "Deskripsi",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.description),
                prefixIconColor: Color(0xFF5409DA),
              ),
            ),
            const SizedBox(height: 20),
            const TugasEmpatTile(
              icon: Icons.celebration,
              deskripsi: 'Sewa 1 jam untuk kondangan',
              harga: 'Rp 25.000',
              kriteriaUmur: '18–35 tahun',
            ),
            const TugasEmpatTile(
              icon: Icons.directions_walk,
              deskripsi: 'Sewa 2 jam untuk ajak jalan',
              harga: 'Rp 30.000',
              kriteriaUmur: '20–40 tahun',
            ),
            const TugasEmpatTile(
              icon: Icons.work,
              deskripsi: 'Sewa 3 jam untuk acara resmi',
              harga: 'Rp 50.000',
              kriteriaUmur: '25–45 tahun',
            ),
            const SizedBox(height: 12),
            ListTile(
  leading: Image.asset("Assets/image/anime1.jpg"),
  title: Text("Sewa 7 jam untuk liburan"),
  subtitle: Text("Rp. 90.000 Umur: 11-50 tahun"),
  trailing: Icon(Icons.arrow_forward_ios),  // Changed from Icons() to Icon()
  tileColor: Color.fromARGB(67, 208, 32, 248),
  onTap: () {},
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
),       
const SizedBox(height: 12),   
            
 ListTile(
  leading: Image.asset("Assets/image/anime1.jpg"),
  title: Text("Sewa 5 jam untuk acara keluarga"),
  subtitle: Text("Rp. 90.000 Umur: 11-50 tahun"),
  trailing: Icon(Icons.arrow_forward_ios),  // Changed from Icons() to Icon()
  tileColor: Color.fromARGB(147, 198, 50, 247),
  onTap: () {},
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
),      
const SizedBox(height: 12),    
ListTile(
  leading: Image.asset("Assets/image/anime1.jpg"),
  title: Text("1 Hari Full Day"),
  subtitle: Text("Rp. 90.000 Umur: 40-50 tahun"),
  trailing: Icon(Icons.arrow_forward_ios),  // Changed from Icons() to Icon()
  tileColor: Color.fromARGB(104, 205, 34, 34),
  onTap: () {},
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
),
            
            // Card(
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   elevation: 4,
            //   margin: const EdgeInsets.symmetric(vertical: 8),
            //   child: ListTile(
            //     leading: Image.asset(
            //       "Assets\image\poto1.jpg", width: 50,height: 50,
            //       fit: BoxFit.cover,
            //     ),
            //     title: const Text(
            //       'Sewa 1 jam untuk motoran',
            //       style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         color: Color.fromARGB(255, 78, 113, 255),
              //     ),
              //   ),
              //   subtitle: const Text('Rp 3.500.000'),
              //   trailing: const Icon(Icons.arrow_forward_ios),
              //   tileColor: Color.fromARGB(64, 86, 9, 218),
              //   onTap: () {},
              // ),
            // ),
          ],
        ),
      ),
    );
  }
}

class TugasEmpatTile extends StatelessWidget {
  final IconData icon;
  final String deskripsi;
  final String harga;
  final String kriteriaUmur;

  const TugasEmpatTile({
    Key? key,
    required this.icon,
    required this.deskripsi,
    required this.harga,
    required this.kriteriaUmur,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Color(0xFF5409DA), size: 30),
        title: Text(
          deskripsi,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('$harga • Umur: $kriteriaUmur'),
        tileColor: const Color.fromARGB(64, 86, 9, 218),
      ),
    );
  }
}
