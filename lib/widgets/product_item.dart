import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/product_detail_screen.dart';

import '../providers/Product.dart';

class ProductItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetail.routeName, arguments: product.id);
          },
          child: Image.network(product.imageUrl, fit: BoxFit.cover),
        ),
        footer: GridTileBar(
          title: Text(product.title, textAlign: TextAlign.center,),
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {

            },
            color: Theme.of(context).accentColor
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {

            },
            color: Theme.of(context).accentColor
          ),
        ),
      ),
    );
  }
}