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
