import 'package:flutter/material.dart';

/**
 * Author: Kelyn Paul Njeri.
 * Date: 21st March 2019
 */

/**Create main function that will act run my whole app. */
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _product = ['Food Tester'];
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
              onPressed: () {
                _product.add('Robot Food Testing.');
                print(_product);
              },
              child: Text('Add Product'),
            ),
          ),
          Column(
            children: _product
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
          )
        ]),
      ),
    );
  }
}
