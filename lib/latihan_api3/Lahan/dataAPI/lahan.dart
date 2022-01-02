class Lahan {
  final int id_lahan;
  final double luas_lahan_total;
  final String nama_lahan;
  final String kemiringan;

  Lahan({
    required this.id_lahan,
    required this.nama_lahan,
    required this.luas_lahan_total,
    required this.kemiringan,
  });

  factory Lahan.fromJson(Map<String, dynamic> json) {
    return Lahan(
      id_lahan: json['id_lahan'],
      nama_lahan: json['nama_lahan'],
      luas_lahan_total: double.parse(json['luas_lahan_total'].toString()),
      kemiringan: json['param1'].toString(),
    );
  }
}
