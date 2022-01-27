import 'package:flutter/material.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // HW: Add state variables and functions
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hablemo',
          // 2
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // HW: Show selected tab
      body: Center(
          child: Text('Let\'s get cooking ! ',
              // 3
              style: Theme.of(context).textTheme.headline1)),
      // HW: Add bottom navigation bar
    );
  }
}
