import 'package:flutter/material.dart';
import 'package:tugas_flutter/constant/app_image.dart';

void main() {
  runApp(MaterialApp(
    home: TentangPolimediaPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class TentangPolimediaPage extends StatelessWidget {
  final List<Map<String, String>> cards = [
    {
      'image':  'Assets/image/polimed1.jpg',
      'title': 'Kampus Utama Jakarta'
    },
    {
      'image': 'Assets/image/polimed3.jpg',
      'title': 'Laboratorium Desain'
    },
    {
      'image': 'Assets/image/polimed4.jpg',
      'title': 'Studio Multimedia'
    },
    {
      'image': 'Assets/image/polimed4.jpg',
      'title': 'Kegiatan Mahasiswa'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Polimedia'),
        backgroundColor: const Color.fromARGB(255, 255, 205, 68),
      ),
      /////////////////////drawer
      ///
      ///
      ///
      ///

      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Politeknik Negeri Media Kreatif (Polimedia) adalah perguruan tinggi vokasi negeri yang berfokus pada pengembangan talenta di bidang media, industri kreatif, dan teknologi informasi. Berdiri sejak tahun 2008, Polimedia memiliki kampus utama di Jakarta dan cabang di Medan serta Makassar. Lulusan Polimedia disiapkan untuk siap kerja melalui pendidikan terapan berbasis praktik langsung.',
            style: TextStyle(fontSize: 16, height: 1.5),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 24),
          Text(
            'Galeri Polimedia',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 220,
            child: ListView.separated(
              //////////////////////////////////listvies scroll ke samping 
              scrollDirection: Axis.horizontal,
              itemCount: cards.length,
              //////////////////separator builder itu yang ngatur pemisah di antara item.
              separatorBuilder: (_, __) => SizedBox(width: 12),
              itemBuilder: (context, index) {
                final card = cards[index];
                return Container(
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /////////////fungsi clipRreact memotong (clip) child widget-nya dengan sudut membulat (rounded corners). sama kaya border radius
                      ClipRRect(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16)),
                            ////////////GANTI IMAGE ASSETT
                        child: Image.asset(
                          card['image']!,
                          height: 120,
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                        child: Text(
                          card['title']!,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
