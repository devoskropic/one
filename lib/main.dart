import 'package:flutter/material.dart';
import 'one_theme.dart';
import 'home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // HW: Create theme
    final tema = OneTheme.light();

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
