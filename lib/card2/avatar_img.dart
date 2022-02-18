import 'package:flutter/material.dart';

class AvatarImg extends StatelessWidget {
  const AvatarImg({
    Key? key,
    this.imgProvider,
    this.imgRad = 20,
  }) : super(key: key);

  final double imgRad;
  final ImageProvider? imgProvider;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imgRad,
      child: CircleAvatar(
        radius: imgRad - 5,
        backgroundImage: imgProvider,
      ),
    );
  }
}
