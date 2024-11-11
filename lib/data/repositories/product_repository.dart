import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/product_model.dart';

class ProductRepository {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<List<Product>> fetchProducts() async {
    final snapshot = await firestore.collection('products').get();
    return snapshot.docs.map((doc) {
      return Product.fromJson(doc.data() as Map<String, dynamic>);
    }).toList();
  }

  Future<void> addProduct(Product product) async {
    await firestore.collection('products').add(product.toJson());
  }
}
