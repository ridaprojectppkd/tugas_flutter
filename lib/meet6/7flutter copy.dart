// import 'package:flutter/material.dart';
// // import 'package:flutter/widgets.dart';
// import 'package:tugas_flutter/meet6/7checkbox.dart';
// import 'package:tugas_flutter/meet6/7colormode.dart';
// import 'package:tugas_flutter/meet6/7date.dart';
// import 'package:tugas_flutter/meet6/7produk.dart';
// import 'package:tugas_flutter/meet6/7reminder.dart';

// class tugas7baru extends StatefulWidget {
//   const tugas7baru({super.key});

//   @override
//   State<tugas7baru> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<tugas7baru> {
//   int _selectedIndex = 0;
//   List<Widget> listscreen = [
//     switchmode(),
//     Checkbox2(),
//     ProductCategoryPage(),
//     BirthDatePage(),
//     ReminderTimePage(),
//     ];

//   /////////
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Tugas7', style: TextStyle(color: Color(0xff0065F8))),
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [Color(0xff096B68), Color(0xff129990), Color(0xff90D1CA)],
//             ),
//           ),
//         ),
//       ),
//       body: listscreen[_selectedIndex],
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CircleAvatar(radius: 35),
//                   SizedBox(height: 14),
//                   Text('Rida Dzakiyyah'),
//                   Text('ridadzakiyyah@gmail.com'),
//                 ],
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.shop),
//               title: Text('Pilih kategori'),
//               onTap: () {
//                 setState(() {
//                   _selectedIndex = 0;
//                   Navigator.pop(context);
//                 });
//               },
//             ),

//             ListTile(
//               leading: Icon(Icons.shop),
//               title: Text('Pilih kategori'),
//               onTap: () {
//                 setState(() {
//                   _selectedIndex = 1;
//                   Navigator.pop(context);
//                 });
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.shop),
//               title: Text('Pilih kategori'),
//               onTap: () {
//                 setState(() {
//                   _selectedIndex = 2;
//                   Navigator.pop(context);
//                 });
//               },
//             ),

//              ListTile(
//               leading: Icon(Icons.date_range),
//               title: Text('Date'),
//               onTap: () {
//                 setState(() {
//                   _selectedIndex = 3;
//                   Navigator.pop(context);
//                 });
//               },
//             ),

//             ListTile(
//               leading: Icon(Icons.date_range),
//               title: Text('Date'),
//               onTap: () {
//                 setState(() {
//                   _selectedIndex = 4;
//                   Navigator.pop(context);
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
