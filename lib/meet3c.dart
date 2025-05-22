import 'package:flutter/material.dart';

class MeetTigaC extends StatelessWidget {
  const MeetTigaC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Meet 3C"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: const Color.fromARGB(255, 255, 197, 197)),
            onPressed: () {
              // Action for search button
            },
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: 5,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/poto1.jpg"),

                  // child: Image.asset("assets/images/jokowi.jpg"),
                ),
                title: Text("Test Profil"),
                trailing: Icon(Icons.more_vert),
              ),
              Image.asset(
                "assets/images/poto1.jpg",
                // height: 100,
                width: double.infinity,
              ),
              ListTile(leading: Icon(Icons.favorite)),
            ],
          );
          // buildListUser();

          // Text(
          //   "data ke-$index",
          //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          // );
        },
      ),
    );
  }
}