import 'package:flutter/material.dart';
import '../themes/one_theme.dart';
import 'avatar_img.dart';

class AuthorShit extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imgP;

  const AuthorShit({
    Key? key,
    required this.authorName,
    required this.title,
    this.imgP,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TASK: Replace return container()
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        // TASK: Add alignment
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AvatarImg(
                imgProvider: imgP,
                imgRad: 28,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: OneTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: OneTheme.lightTextTheme.headline3,
                  ),
                ],
              ),
            ],
          ),
          // TASK: add IconButton
          IconButton(
            onPressed: () {
              const snackBar = SnackBar(
                content: Text('Favorite Pressed'),
                // action: SnackBarAction(
                //   label: 'Undo',
                //   onPressed: () {
                //     // TASK: code to undo action
                //     return authorName,
                //   },
                // ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: const Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey[400],
          ),
        ],
      ),
    );
  }
}
