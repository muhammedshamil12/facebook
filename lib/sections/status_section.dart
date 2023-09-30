import 'package:facebook_1/assets_image.dart';
import 'package:facebook_1/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:Avatar(displayImage: dulquer,displaystatus:false,),
      
      title: const TextField(
        decoration: InputDecoration(
          hintText: "what s on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
        ),
      ),
    );
  }
}
