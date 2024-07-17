# flutter_ui
===================
### UAS API FLUTTER
- [link Api Laravel] ['https://github.com/mhmmdediefanto/UAS_API_LARAVEL']
> jadi saya membuat project api laravel untuk di fecthing ke flutter

>script model saya
```bash
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
```
>script service api saya
```bash
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

Future<List<Product>> fetchProducts() async {
  final response = await http.get(Uri.parse('http://localhost:8000/api/product'));

  if (response.statusCode == 200) {
    Map<String, dynamic> responseBody = json.decode(response.body);
    List<dynamic> productList = responseBody['data'];
    return productList.map((json) => Product.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load products');
  }
}
```