import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AnggotaModel {
  int? id;
  String nama;
  String alamat;
  String phone;
  String profesi;
  String email;
  AnggotaModel({
    this.id,
    required this.nama,
    required this.alamat,
    required this.phone,
    required this.profesi,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama': nama,
      'alamat': alamat,
      'phone': phone,
      'profesi': profesi,
      'email': email,
    };
  }

  factory AnggotaModel.fromMap(Map<String, dynamic> map) {
    return AnggotaModel(
      id: map['id'] != null ? map['id'] as int : null,
      nama: map['nama'] as String,
      alamat: map['alamat'] as String,
      phone: map['phone'] as String,
      profesi: map['profesi'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnggotaModel.fromJson(String source) => AnggotaModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
