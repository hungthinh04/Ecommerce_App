//hien thi ds san pham

import 'package:ecommerce_app/core/constants/styles.dart';
import 'package:ecommerce_app/core/utils/helpers.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;

  const ProductCard({
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Image.network(imageUrl, height: 120, width: double.infinity, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppStyles.heading2),
                Text(Helpers.formatCurrency(price), style: AppStyles.bodyText),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
