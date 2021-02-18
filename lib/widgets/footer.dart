import 'package:flutter/material.dart';

class Foot extends StatelessWidget {
  const Foot({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/bismillah.png',
          height: 100,
          color: Colors.white,
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
