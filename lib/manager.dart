import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String initialProduct;
  ProductManager(this.initialProduct);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager> {
  List<String> _product = ['Food Tester'];
  @override
  void initState() {
    _product.add(widget.initialProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _product.add('Robot Food Testing.');
              });
            },
            child: Text('Add Product'),
          ),
        ),
        Products(_product)
      ],
    );
  }
}
