import 'package:flutter/material.dart';
import 'package:tugas_flutter/Tugas12/db_helper12.dart';
import 'package:tugas_flutter/Tugas13/Tambah_data/tugas12n.dart';
import 'package:tugas_flutter/tugas11/edit_anggota_screen.dart';
import 'package:tugas_flutter/tugas11/modelang.dart';

class Tugas11b extends StatefulWidget {
  const Tugas11b({super.key});

  @override
  State<Tugas11b> createState() => _Tugas11bState();
}

class _Tugas11bState extends State<Tugas11b> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _visimisiController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  List<AnggotaModel> daftarAnggota = [];

  @override
  void initState() {
    muatData();
    super.initState();
  }

  Future<void> muatData() async {
    final data = await DBHelper.getAllAnggota();
    setState(() {
      daftarAnggota = data;
    });
  }

  Future<void> simpanData() async {
    final nama = _namaController.text;
    final email = _emailController.text;
    final visimisi = _visimisiController.text;
    final phone = _phoneController.text;

    if (nama.isNotEmpty) {
      await DBHelper.insertAnggota(
        AnggotaModel(
          nama: nama,
          email: email,
          visimisi: visimisi,
          phone: phone,
        ),
      );
      _namaController.clear();
      _emailController.clear();
      _visimisiController.clear();
      _phoneController.clear();
      muatData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Pendaftaran Anggota\nKomunitas Pantai Selatan⛺',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),

        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffFA812F),
                Color(0xffF3C623), // Ganti dengan warna yang diinginkan
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Form Pendataan Anggota',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    validator:
                        (value) =>
                            (value == null || value.isEmpty)
                                ? 'Wajib harus diisi'
                                : null,
                    controller: _namaController,
                    decoration: InputDecoration(
                      labelText: 'Nama',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    validator:
                        (value) =>
                            (value == null || value.isEmpty)
                                ? 'Wajib harus diisi'
                                : null,
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    validator:
                        (value) =>
                            (value == null || value.isEmpty)
                                ? 'Wajib harus diisi'
                                : null,
                    controller: _visimisiController,
                    decoration: InputDecoration(
                      labelText: 'Visi Misi',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    validator:
                        (value) =>
                            (value == null || value.isEmpty)
                                ? 'Wajib harus diisi'
                                : null,
                    controller: _phoneController,
                    decoration: InputDecoration(
                      labelText: 'No. Handphone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        simpanData();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 45),
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text('Simpan Data'),
                  ),
                  Divider(height: 38),
                ],
              ),
            ),
            Text(
              'Anggota Terdaftar',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              /////////listpiw
              child: ListView.builder(
                //physics: NeverScrollableScrollPhysics(),
                itemCount: daftarAnggota.length,
                itemBuilder: (BuildContext context, int index) {
                  final anggota = daftarAnggota[index];
                  return Card(
                    child: ListTile(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder:
                              (context) => AlertDialog(
                                title: Text('Details'),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama: ${anggota.nama}'),
                                    Text('Email: ${anggota.email}'),
                                    Text('Visimisi: ${anggota.visimisi}'),
                                    Text('Phone: ${anggota.phone}'),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Tutup'),
                                  ),
                                ],
                              ),
                        );
                      },
                      /////////////////////////////kotak daftar data anggota
                      leading: CircleAvatar(child: Text('${anggota.id}}')),
                      title: Text(
                        anggota.nama,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Email: ${anggota.email}'),
                          Text('Visimisi: ${anggota.visimisi}'),
                          Text('Phone: ${anggota.phone}'),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => Tugas12c(
                                    // Data yang akan diedit
                                  ),
                            ),
                          );
                        },
                        icon: Icon(Icons.edit),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
