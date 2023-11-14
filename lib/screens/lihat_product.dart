import 'package:flutter/material.dart';
import 'package:shopping_art/models/product.dart';

class ProductListPage extends StatelessWidget {
  final List<Product> products;

  ProductListPage({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Produk'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(products[index].name),
              subtitle: Text('Harga: ${products[index].price}\nDeskripsi: ${products[index].description}'),
            ),
          );
        },
      ),
    );
  }
}