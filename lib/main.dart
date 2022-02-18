import 'package:flutter/material.dart';
import 'themes/one_theme.dart';
import 'home.dart';

void main() {
  runApp(const One());
}

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // HW: Create theme
    final tema = OneTheme.dark();

    // HW: Apply Home widget
    return MaterialApp(
      theme: tema,
      title: 'Hablemoh',
      home: const Home(),
    );
    // return MaterialApp(
    //   // HW: Add theme
    //   theme: tema,
    //   title: 'Hablemo',
    //   home: Scaffold(
    //     // HW: Style the title
    //     appBar: AppBar(
    //       title: Text(
    //         'Hablemo',
    //         style: tema.textTheme.headline6,
    //       ),
    //     ),
    //     // HW: Style the body text
    //     body: Center(
    //       child: Text('Let\'s get cooking!', style: tema.textTheme.headline1),
    //     ),
    //   ),
    // );
  }
}
