import 'package:flutter/material.dart';

class CircelIconButton extends StatelessWidget {
  final IconData icon;
  final Function onpressIcon;
  CircelIconButton({@required this.icon, @required this.onpressIcon});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressIcon,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      child: Icon(
        icon,
        color: Colors.black,
      ),
      elevation: 10.0,
      shape: CircleBorder(),
      fillColor: Colors.white,
    );
  }
}
