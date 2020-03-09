import 'package:flutter/material.dart';

void main() => runApp(SimpleApp());

class SimpleApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SimpleAppState();
  }
}

class SimpleAppState extends State<SimpleApp> {
  void selectOption(int idx) {
    setState(() {
      currentIndex = idx;
      print('Pressed $currentIndex');
    });
  }

  var options = [
    'I want to order a pizza',
    'I want to see my favourite pizzas',
    'I want to check my profile',
  ];

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Pizza Delivery'),
          ),
          body: Column(
            children: <Widget>[
              Text('What do you want?'),
              Text(options[currentIndex]),
              RaisedButton(
                onPressed: () => selectOption(0),
                child: Text('Order'),
              ),
              RaisedButton(
                onPressed: () => selectOption(1),
                child: Text('Favourites'),
              ),
              RaisedButton(
                onPressed: () {
                  selectOption(2);
                },
                child: Text('Profile'),
              ),
            ],
          )),
    );
  }
}
