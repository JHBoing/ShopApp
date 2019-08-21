import 'package:flutter/material.dart';
import 'package:shop_app/widgets/products_grid.dart';
import '../providers/Product.dart';

class ProductsOverviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopperia')
      ),
      body: ProductsGrid(),
    );
  }
}

