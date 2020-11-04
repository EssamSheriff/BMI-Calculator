import 'package:flutter/material.dart';
import 'Constants.dart';

class Card_Child_Column extends StatelessWidget {
  final String text;
  final IconData icon;

  const Card_Child_Column({@required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: klabeltext,
        ),
      ],
    );
  }
}
