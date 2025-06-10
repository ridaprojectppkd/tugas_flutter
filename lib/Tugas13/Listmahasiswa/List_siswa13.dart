import 'package:flutter/material.dart';

class mahasiswa {
  final String nama;
  final String prodi;
  final String gambarAsset;
  final double semester; //////angka pakai double

  mahasiswa({
    required this.nama,
    required this.prodi,
    required this.gambarAsset,
    required this.semester,
  });
}
/////////////////////////////modell

class Listmaba extends StatelessWidget {
  final List<mahasiswa> maba = [
    mahasiswa(
      nama: 'Udin Slepet',
      prodi: 'S1-Ternak Lele',
      gambarAsset: 'Assets/image/jimin.jpg',
      semester: 3,
    ),
    mahasiswa(
      nama: 'Rida Dzakiyyah',
      prodi: 'D4-Teknologi Rekayasa Multimedia.',
      gambarAsset: 'Assets/image/animmol.jpg',
      semester: 1,
    ),
    mahasiswa(
      nama: 'Bagas Rendang',
      prodi: 'D3-Desain Mode.',
      gambarAsset: 'Assets/image/tae.jpg',
      semester: 8,
    ),
  ];

  Listmaba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('List Mahasiswa')),
        titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 1, 1, 255),
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      body: ListView.builder(
        itemCount: maba.length,
        itemBuilder: (context, index) {
          return ListMahasiswa(maba: maba[index]);
        },
      ),
    );
  }
}

class ListMahasiswa extends StatelessWidget {
  final mahasiswa maba;

  const ListMahasiswa({super.key, required this.maba});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 3,
      child: ListTile(
        leading: SizedBox(
          width: 60,
          height: 60,
          child: Image.asset(
            maba.gambarAsset,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Icon((Icons.person));
            },
          ),
        ),
        title: Text(maba.nama, overflow: TextOverflow.ellipsis),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              maba.prodi,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(fontSize: 12),
            ),
            Text(
              " ${maba.semester.toStringAsFixed(0)}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),
            ),
          ],
        ),
        trailing: Icon(
          Icons.person_3_outlined,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}
