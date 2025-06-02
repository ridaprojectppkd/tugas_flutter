import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:tugas_flutter/tugas7/7checkbox.dart';
import 'package:tugas_flutter/tugas7/7colormode.dart';
import 'package:tugas_flutter/tugas7/7date.dart';
import 'package:tugas_flutter/tugas7/7produk.dart';
import 'package:tugas_flutter/meet6/7reminder.dart';
// import 'package:tugas_flutter/meet6/Tugas3flutter.dart';

class tugas7baru extends StatefulWidget {
  const tugas7baru({super.key});

  @override
  State<tugas7baru> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<tugas7baru> {
  int _selectedIndex = 0;
  List<Widget> listscreen = [
    switchmode(),
    Checkbox2(),
    ProductCategoryPage(),
    BirthDatePage(),
    ReminderTimePage(),
  ];
  // final List<Widget> _screens = [
  //   const TugasTiga(),
  //    const tugas7baru()
  //    ];

  /////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tugas7',
          style: TextStyle(
            color: Color.fromARGB(255, 254, 255, 255),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff096B68), Color(0xff129990), Color(0xff90D1CA)],
            ),
          ),
        ),
      ),
      body: listscreen[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('Assets/image/anime 2.jpg'),
                  ),
                  SizedBox(height: 14),
                  Text('Rida Dzakiyyah'),
                  Text('ridadzakiyyah@gmail.com'),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.dark_mode, color: Color(0xff265073),),
              title: Text(
                'Mode Gelap',
                style: TextStyle(color: Color(0xff2D9596)),
              ),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                  Navigator.pop(context);
                });
              },
            ),

            ListTile(
              leading: Icon(Icons.description, color: Color(0xff265073),),
              title: Text(
                'Syarat & Ketentuan',
                style: TextStyle(color: Color(0xff2D9596)),
              ),
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.shop, color: Color(0xff265073),),
              title: Text('Ketegori Produk', style: TextStyle(color: Color(0xff2D9596)),),
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                  Navigator.pop(context);
                });
              },
            ),

            ListTile(
              leading: Icon(Icons.calendar_month, color: Color(0xff265073)),
              title: Text('Pilih tanggal lahir', style: TextStyle(color: Color(0xff2D9596)),),
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                  Navigator.pop(context);
                });
              },
            ),

            ListTile(
              leading: Icon(Icons.date_range, color: Color(0xff265073),),
              title: Text('Atur Pengingat', style: TextStyle(color: Color(0xff2D9596)),),
              onTap: () {
                setState(() {
                  _selectedIndex = 4;
                  Navigator.pop(context);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
