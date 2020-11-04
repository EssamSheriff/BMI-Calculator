import 'package:flutter/material.dart';
import 'Constants.dart';

class LastButton extends StatelessWidget {
  final Function press;
  final String Buttontitle;
  LastButton({@required this.Buttontitle, @required this.press});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        child: Center(
          child: Text(
            Buttontitle,
            style: klabeltext,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        color: Colors.blueGrey[700],
        width: double.infinity,
        height: 80,
      ),
    );
  }
}
