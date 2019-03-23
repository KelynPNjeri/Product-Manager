import 'package:flutter/material.dart';

/**
 * Author: Kelyn Paul Njeri
 * Date: 22nd March 2019
 * Module Name: Products Module
 */
class Products extends StatelessWidget {
  final List<String> products;
  // Product Constructor.
  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/cupcakes.jpg'),
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
