import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/order_model.dart';

class OrderRepository {
  final String baseUrl;

  OrderRepository(this.baseUrl);

  Future<List<Order>> fetchOrders(String userId) async {
    final response = await http.get(Uri.parse('$baseUrl/orders/$userId'));
    if (response.statusCode == 200) {
      List jsonData = json.decode(response.body);
      return jsonData.map((data) => Order.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load orders');
    }
  }
}
