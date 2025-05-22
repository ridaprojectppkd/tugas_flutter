// import 'package:flutter/material.dart';

// class Meetgpt extends StatelessWidget {
//   const Meetgpt ({super.key});
  
//   get textAlign => null;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("tugas 3 baru banget", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         ///Single Child fungsiny scroll ke bawah
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: 
//             // FORMULIR
//             textAlign: TextAlign.center,
//             const Text("Our Profile 😎", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 12),
            
//             const TextField(
//               decoration: InputDecoration(
//                 labelText: "Nama",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 12),
//             const TextField(
//               decoration: InputDecoration(
//                 labelText: "Email",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 12),
//             const TextField(
//               decoration: InputDecoration(
//                 labelText: "No. HP",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 12),
//             const TextField(
//               decoration: InputDecoration(
//                 labelText: "Deskripsi",
//                 border: OutlineInputBorder(),
//               ),
//               maxLines: 3,
//             ),
//             const SizedBox(height: 24),

//             // GALERI GRID
//             const Text("Galeri Gambar", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 12),

//             GridView.count(
//               crossAxisCount: 3, // bisa ubah ke 2 sesuai kebutuhan
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               crossAxisSpacing: 10,
//               mainAxisSpacing: 10,
//               children: List.generate(6, (index) {
//                 final colors = [
//                   Colors.red,
//                   Colors.green,
//                   Colors.blue,
//                   Colors.orange,
//                   Colors.purple,
//                   Colors.teal,
//                 ];
//                 return Stack(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         color: colors[index],
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 8,
//                       left: 8,
//                       child: Text(
//                         'Gambar ${index + 1}',
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           backgroundColor: Colors.black54,
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
