class Product {
  final int id;
  final String title;
  final double harga;
  final String deskripsi;
  final int stock;
  final String image;
  final DateTime createdAt;
  final DateTime updatedAt;

  Product({
    required this.id,
    required this.title,
    required this.harga,
    required this.deskripsi,
    required this.stock,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      harga: double.parse(json['harga']),
      deskripsi: json['deskripsi'],
      stock: int.parse(json['stock']),
      image: json['image'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
