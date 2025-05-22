import 'package:flutter/material.dart';


class gptbebe extends StatelessWidget {
  const gptbebe ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulir & Daftar Produk',
      home: const ProductFormPage(),
    );
  }
}

class ProductFormPage extends StatelessWidget {
  const ProductFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulir & Daftar Produk'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Formulir Input
          const TextField(
            decoration: InputDecoration(labelText: 'Nama'),
          ),
          const SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(labelText: 'No. HP'),
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(labelText: 'Deskripsi'),
            maxLines: 3,
          ),
          const SizedBox(height: 24),
          const Text(
            'Daftar Produk',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          // Daftar Produk
          ListTile(
            leading: const Icon(Icons.phone_android),
            title: const Text('Smartphone X'),
            subtitle: const Text('Rp 3.500.000'),
          ),
          ListTile(
            leading: const Icon(Icons.laptop_mac),
            title: const Text('Laptop Pro 14"'),
            subtitle: const Text('Rp 14.000.000'),
          ),
          ListTile(
            leading: const Icon(Icons.watch),
            title: const Text('Smartwatch Gen 5'),
            subtitle: const Text('Rp 2.000.000'),
          ),
          ListTile(
            leading: const Icon(Icons.headphones),
            title: const Text('Wireless Headphones'),
            subtitle: const Text('Rp 1.200.000'),
          ),
          ListTile(
            leading: const Icon(Icons.tv),
            title: const Text('Smart TV 42"'),
            subtitle: const Text('Rp 4.500.000'),
          ),
        ],
      ),
    );
  }
}
