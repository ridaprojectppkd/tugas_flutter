import 'package:flutter/material.dart';

class Produk {
  final String nama;
  final String deskripsi;
  final String gambarAsset;
  final double harga; //////angka pakai double

  Produk({
    required this.nama,
    required this.deskripsi,
    required this.gambarAsset,
    required this.harga,
  });
}
/////////////////////////////modell

class AksesorisMobilPage extends StatelessWidget {
  final List<Produk> produk = [
    Produk(
      nama: 'Karpet Mobil',
      deskripsi: 'Karpet anti slip, mudah dibersihkan, dan tahan lama.',
      gambarAsset: 'Assets/image/karpetmobil.jpg',
      harga: 7500000,
    ),
    Produk(
      nama: 'Aroma Mobil',
      deskripsi: 'Pengharum mobil tahan lama dengan aroma menyegarkan.',
      gambarAsset: 'Assets/image/aromamobil.jpg',
      harga: 25000000,
    ),
    Produk(
      nama: 'Sarung Stir',
      deskripsi: 'Nyaman digenggam, anti slip, dan bergaya sporty.',
      gambarAsset: 'Assets/image/stirmobil.jpg',
      harga: 5000000,
    ),
    Produk(
      nama: 'Vacuum Cleaner Mini',
      deskripsi: 'Membersihkan interior mobil dengan mudah dan cepat.',
      gambarAsset: 'Assets/image/apel.jpg',
      harga: 800000,
    ),
    Produk(
      nama: 'Tempat Sampah Mobil',
      deskripsi: 'Desain ringkas dan mudah ditempatkan di sudut mobil.',
      gambarAsset: 'Assets/image/sampah.jpg',
      harga: 980000,
    ),
  ];

  const AksesorisMobilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aksesoris Mobil')),
      body: ListView.builder(
        itemCount: produk.length,
        itemBuilder: (context, index) {
          return ListProduk(produk: produk[index]);
        },
      ),
    );
  }
}

class ListProduk extends StatelessWidget {
  final Produk produk;

  const ListProduk({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 3,
      child: ListTile(
        leading: SizedBox(
          width: 60,
          height: 60,
          child: Image.asset(
            produk.gambarAsset,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Icon((Icons.shopping_cart_checkout));
            },
          ),
        ),
        title: Text(produk.nama, overflow: TextOverflow.ellipsis),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              produk.deskripsi,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "Rp. ${produk.harga.toStringAsFixed(0)}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),
            ),
          ],
        ),
        trailing: Icon(
          Icons.shopping_cart_checkout,
          color: Color.fromARGB(255, 0, 174, 255),
        ),
      ),
    );
  }
}
