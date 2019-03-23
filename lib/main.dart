import 'package:flutter/material.dart';

import './manager.dart';

/**
 * Author: Kelyn Paul Njeri.
 * Date: 21st March 2019
 */

/**Create main function that will act run my whole app. */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Manager'),
        ),
        body: ProductManager('Food Tester'),
      ),
    );
  }
}
