import 'package:flutter/material.dart';

/**
 * Author: Kelyn Paul Njeri.
 * Date: 21st March 2019
 */

/**Create main function that will act run my whole app. */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Manager'),
        ),
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () {},
              child: Text('Add Product'),
            ),
          ),
          Card(
            child: Column(
              children: <Widget>[
                Image.asset('assets/cupcakes.jpg'),
                Text('Cupcake Paradise.')
              ],
            ),
          )
        ]),
      ),
    );
  }
}
