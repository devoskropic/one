import 'package:flutter/material.dart';
import '../themes/one_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String category = 'Editor\'s choice';
  final String title = 'El arte de la masa';
  final String description = 'Aprenda a hacer le pan peffait';
  final String chef = 'Don Cheffe';

  @override
  Widget build(BuildContext context) {
    return Center(
      // TASK: Card1 decorate container
      // child: Container(),
      child: Container(
        // TASK: Add a stack of text
        child: Stack(
          children: [
            Text(
              category,
              style: OneTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                title,
                style: OneTheme.darkTextTheme.headline6,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                description,
                style: OneTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                chef,
                style: OneTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 370,
          height: 500,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
