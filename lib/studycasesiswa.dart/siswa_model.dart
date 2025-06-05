class Siswa {
  final int? id;
  final String nama;
  final int umur;

  Siswa({this.id, required this.nama, required this.umur});

  // Konversi dari Object ke Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nama': nama,
      'umur': umur,
    };
  }

  // Konversi dari Map ke Object
  factory Siswa.fromMap(Map<String, dynamic> map) {
    return Siswa(
      id: map['id']?.toInt() ?? 0,
      nama: map['nama'] ?? '',
      umur: map['umur']?.toInt() ?? 0,
    );
  }
}