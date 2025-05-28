import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Aplikasi', style: TextStyle(color: Color(0xff2D9596), fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            // Circle Avatar untuk foto profil
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xff2D9596),
                      width: 3,
                    ),
                  ),
                ),
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('Assets/image/anime 2.jpg'),
                 
                ),
                Positioned(
                  bottom: 0,
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff2D9596),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.edit, color: Colors.white),
                      onPressed: () {
                        // Aksi untuk mengganti foto
                        _showPhotoOptions(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            // Informasi aplikasi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoCard(
                    title: 'Judul Aplikasi',
                    content: 'Ridaz Project',
                    icon: Icons.apps,
                  ),
                  const SizedBox(height: 15),
                  _buildInfoCard(
                    title: 'Deskripsi',
                    content: 'Aplikasi ini dibuat untuk memenuhi tugas pemrograman mobile dengan Flutter',
                    icon: Icons.description,
                  ),
                  const SizedBox(height: 15),
                  _buildInfoCard(
                    title: 'Pembuat',
                    content: 'Rida Dzakiyyah',
                    icon: Icons.person,
                  ),
                  const SizedBox(height: 15),
                  _buildInfoCard(
                    title: 'Versi',
                    content: '1.0.0',
                    icon: Icons.info,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({required String title, required String content, required IconData icon}) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Icon(icon, size: 30, color: Color(0xff2D9596)),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    content,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPhotoOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera),
              title: const Text('Ambil Foto'),
              onTap: () {
                Navigator.pop(context);
                // Implementasi kamera
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Pilih dari Galeri'),
              onTap: () {
                Navigator.pop(context);
                // Implementasi galeri
              },
            ),
          ],
        );
      },
    );
  }
}