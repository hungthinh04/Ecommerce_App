import 'package:ecommerce_app/data/models/cart_item_model.dart';

class Order {
  final String id;
  final String userId;
  final List<CartItem> items;
  final double totalPrice;
  final DateTime date;

  Order({
    required this.id,
    required this.userId,
    required this.items,
    required this.totalPrice,
    required this.date,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      userId: json['userId'],
      items: (json['items'] as List)
          .map((item) => CartItem.fromJson(item))
          .toList(),
      totalPrice: json['totalPrice'].toDouble(),
      date: DateTime.parse(json['date']),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'items': items.map((item) => item.toJson()).toList(),
        'totalPrice': totalPrice,
        'date': date.toIso8601String(),
      };
}
