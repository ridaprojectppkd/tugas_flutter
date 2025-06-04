import 'package:flutter/material.dart';
import 'package:tugas_flutter/tugas10.dart/Terims.dart';

class Tugas10 extends StatefulWidget {
  const Tugas10({super.key});

  @override
  State<Tugas10> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Tugas10> {
  final _formKey = GlobalKey<FormState>();
  final _namaLengkapController = TextEditingController();
  final _emailController = TextEditingController();
  final _nohpController = TextEditingController();
  final _kotaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Tugas 10 Text Form Field',
            style: TextStyle(
              fontSize: (25),
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),

        // backgroundColor: Color.fromARGB(106, 0, 0, 255),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFE6521F), Color(0xFFFB9E3A)],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _namaLengkapController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'nama harus disi anjay';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: "nama lengkap",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'email harus diisi';
                  } else if (!value.contains("@")) {
                    return "email tidak valid";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: _nohpController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "no handphone",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: _kotaController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "kota domisili wajib diisi";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: "Kota Domisili",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          /////////////////konfirmasi
                          title: Text(
                            "Konfirmasi🦊",
                            style: TextStyle(
                              fontSize: (25),
                              fontWeight: FontWeight.bold,
                              color: Color(0xffE6521F),
                            ),
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Nama: ${_namaLengkapController.text}'),
                              Text('Email: ${_emailController.text}'),
                              Text('Nomor Handphone: ${_nohpController.text}'),
                              Text('Kota Domisili: ${_kotaController.text}'),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => terimakasi(
                                          nama: _namaLengkapController.text,
                                          kota: _kotaController.text,
                                        ),
                                  ),
                                );
                              },
                              child: Text('Lanjut', style: TextStyle(color: Color(0xffE6521F)),),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Color(0xffE6521F),
                  foregroundColor: Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Daftar',
                  style: TextStyle(fontSize: (20), fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
