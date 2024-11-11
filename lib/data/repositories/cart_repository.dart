import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/cart_item_model.dart';

class CartRepository {
  final String baseUrl;

  CartRepository(this.baseUrl);

  Future<List<CartItem>> fetchCart(String userId) async {
    final response = await http.get(Uri.parse('$baseUrl/cart/$userId'));
    if (response.statusCode == 200) {
      List jsonData = json.decode(response.body);
      return jsonData.map((data) => CartItem.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load cart');
    }
  }
}
