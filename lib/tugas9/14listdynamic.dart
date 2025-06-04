import 'package:flutter/material.dart';

class ListMapDynamic extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    
    {'name': 'Buah', 'icon': Icons.apple},
    {'name': 'Sayur', 'icon': Icons.grass},
    {'name': 'Elektronik', 'icon': Icons.laptop},
    {'name' : 'Pakaian Pria', 'icon' : Icon(Icons.hotel_sharp)}

    
  ];

  const ListMapDynamic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Item')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            leading: Icon(item['icon'], color: Color(0xff5409DA),),
            title: Text(item['name'], selectionColor: Color(0xff5409DA),),
          );
        },
      ),
    );
  }
}


