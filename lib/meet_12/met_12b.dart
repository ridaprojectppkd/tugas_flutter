import 'package:flutter/material.dart';
import 'package:tugas_flutter/Materi/meet_4A.dart';
import 'package:tugas_flutter/constant/app_color.dart';
import 'package:tugas_flutter/constant/app_style.dart';
import 'package:tugas_flutter/meet_12/meet_12a.dart';
// import 'package:tugas_flutter/meet_12/meet_12c.dart';
// import 'package:tugas_flutter/meet_4/meet_4a.dart';

class MeetDuaBelasB extends StatefulWidget {
  const MeetDuaBelasB({super.key});
  static const String id = "/met_12b";

  @override
  State<MeetDuaBelasB> createState() => _MeetDuaBelasBState();
}

class _MeetDuaBelasBState extends State<MeetDuaBelasB> {
  int _selectedIndex = 0;

  static final List<Widget> _screen = [
    Meet12AInputWidget(),
    MeetDuaBelasB(),
    MeetEmpatA(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
          print("Halaman saat ini : $_selectedIndex");
        },
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.army1,
        unselectedItemColor: AppColor.gray88,
        unselectedLabelStyle: AppStyle.fontRegular(
          fontSize: 10,
        ).copyWith(color: AppColor.gray88),
        selectedLabelStyle: AppStyle.fontBold(
          fontSize: 10,
        ).copyWith(color: AppColor.army1),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
