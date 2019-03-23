import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String initialProduct;
  ProductManager({this.initialProduct = 'New Robot Test'}) {
    print('[Product Manager State] Constructor');
  }
  @override
  State<StatefulWidget> createState() {
    print('[Products Manager State] createState()');
    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager> {
  List<String> _product = [];

  // Initializes state.
  @override
  void initState() {
    _product.add(widget.initialProduct);
    super.initState();
    print('[Product Manager State] initState()');
  }

  // Called whenever app gets new external data.
  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[Product Manager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[Product Manager Widget] build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Colors.teal,
            textColor: Colors.white,
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
