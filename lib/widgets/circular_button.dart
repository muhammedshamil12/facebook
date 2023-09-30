import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcan;
  final void Function() buttonAction;
   final Color ?Iconcolor;

  CircularButton({
    required this.buttonIcan,
    required this.buttonAction,
     this.Iconcolor =Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcan,
          color: Iconcolor,
          size: 25,
        ),
      ),
    );
  }
}
