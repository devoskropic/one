import 'package:flutter/material.dart';
import 'author_card.dart';
import '../themes/one_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  final String author = 'Mike Katz';
  final String job = 'Smoothie Connoisseur';
  final String content = 'Receta';
  final String contvariant = 'Smoothies';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 370,
          height: 500,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(
          children: [
            // TASK: add author <shit> info
            AuthorShit(
              authorName: author,
              title: job,
              imgP: const AssetImage('assets/author_katz.jpeg'),
            ),
            // TASK: add positioned text
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      content,
                      style: OneTheme.lightTextTheme.headline1,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        contvariant,
                        style: OneTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
