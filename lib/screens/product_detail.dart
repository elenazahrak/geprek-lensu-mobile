import 'package:flutter/material.dart';
import 'package:geprek_lensu/models/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.menu,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text('Stock: ${product.fields.stock}'),
            const SizedBox(height: 10),
            Text('Price: ${product.fields.price}'),
            const SizedBox(height: 10),
            Text('Description: ${product.fields.description}'),
            
          ],
        ),
      ),
    );
  }
}
