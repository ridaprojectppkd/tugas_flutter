import 'package:flutter/material.dart';
import 'package:tugas_flutter/tugas11/modelkom11.dart';
import 'db_helper11.dart';
// import 'anggota_model.dart';

class TugasSebelas extends StatefulWidget {
  const TugasSebelas({super.key});

  @override
  State<TugasSebelas> createState() => _TugasSebelasState();
}

class _TugasSebelasState extends State<TugasSebelas> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _profesiController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  List<AnggotaModel> daftarKomunitas = [];

  @override
  void initState() {
    super.initState();
    muatData();
  }

  Future<void> muatData() async {
    final data = await DBHelper.getAllAnggota();
    setState(() {
      daftarKomunitas = data;
    });
  }

  Future<void> simpanData() async {
    if (_formKey.currentState!.validate()) {
      await DBHelper.insertAnggota(
        AnggotaModel(
          nama: _namaController.text,
          alamat: _alamatController.text,
          phone: _phoneController.text,
          profesi: _profesiController.text,
          email: _emailController.text),
      );
      
      // Clear form
      _namaController.clear();
      _alamatController.clear();
      _phoneController.clear();
      _profesiController.clear();
      _emailController.clear();
      
      // Refresh data
      muatData();
    }
  }

  Future<void> hapusAnggota(int id) async {
    //await DBHelper.deleteAnggota(id);
    muatData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pendataan Anggota Komunitas'),
        backgroundColor: const Color.fromARGB(255, 7, 65, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Form Pendataan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _namaController,
                    decoration: InputDecoration(
                      labelText: 'Nama Lengkap',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                    ),
                    // validator: (value) => 
                        // value!.isEmpty ? 'Wajib diisi' : null,
                  ),
                  // Add all other form fields similarly...
                  // const SizedBox(height: 16),
                  // ElevatedButton(
                  //   onPressed: simpanData,
                  //   style: ElevatedButton.styleFrom(
                  //     minimumSize: const Size(double.infinity, 45),
                  //     backgroundColor: const Color.fromARGB(192, 7, 238, 255),
                  //   ),
                  //   child: const Text('Simpan'),
                  ),
                ],
              ),
            ),
            const Divider(height: 38),
            const Text(
              'Daftar Anggota',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: daftarKomunitas.length,
                itemBuilder: (context, index) {
                  final anggota = daftarKomunitas[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(child: Text('${index + 1}')),
                      title: Text(anggota.nama),
                      subtitle: Text(anggota.profesi),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => hapusAnggota(anggota.id!),
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Detail Anggota'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Nama: ${anggota.nama}'),
                                Text('Alamat: ${anggota.alamat}'),
                                Text('Phone: ${anggota.phone}'),
                                Text('Profesi: ${anggota.profesi}'),
                                Text('Email: ${anggota.email}'),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Tutup'),
                              ),
                            ],
                          ),
                        );
                      },
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