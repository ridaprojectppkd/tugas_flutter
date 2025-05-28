import 'package:flutter/material.dart';

class ProductCategoryPage extends StatefulWidget {
  const ProductCategoryPage({super.key});

  @override
  State<ProductCategoryPage> createState() => _ProductCategoryPageState();
}

class _ProductCategoryPageState extends State<ProductCategoryPage> {
  String? _selectedCategory;
  final List<String> _categories = [
    'Elektronik',
    'Pakaian',
    'Makanan',
    'Lainnya'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pilih Kategori Produk',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          DropdownButton<String>(
            value: _selectedCategory,
            hint: const Text('Pilih kategori'),
            items: _categories.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                _selectedCategory = value;
              });
            },
          ),
          const SizedBox(height: 20),
          Text(
            _selectedCategory == null
                ? 'Silakan pilih kategori'
                : 'Anda memilih kategori: $_selectedCategory',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}