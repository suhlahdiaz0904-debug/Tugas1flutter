import 'dart:convert';

class PeralatanDapur {
  final String nama;
  final String gambar;
  final String deskripsi;

  PeralatanDapur({
    required this.nama,
    required this.gambar,
    required this.deskripsi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nama': nama,
      'gambar': gambar,
      'deskripsi': deskripsi,
    };
  }

  factory PeralatanDapur.fromMap(Map<String, dynamic> map) {
    return PeralatanDapur(
      nama: map['nama'] as String,
      gambar: map['gambar'] as String,
      deskripsi: map['deskripsi'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PeralatanDapur.fromJson(String source) =>
      PeralatanDapur.fromMap(json.decode(source) as Map<String, dynamic>);
}
