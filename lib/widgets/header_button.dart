import 'package:flutter/material.dart';

Widget headerbutton({
    required String buttonText,
    required IconData buttonIcan,
    required void Function() buttonAction,
    required Color buttonColor,
  }) {
    return ElevatedButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcan,
        color: buttonColor,
      ),
      label: Text(buttonText),
    );
  }