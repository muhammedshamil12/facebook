
import 'package:facebook_1/widgets/avatar.dart';
import 'package:facebook_1/widgets/circular_button.dart';
import 'package:flutter/material.dart';

class StoryCart extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryButton;
  final bool displayBorder;
  StoryCart({
    required this.labelText,
    required this.story,
    required this.avatar,
    this.createStoryButton = false,
    this.displayBorder =false

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        bottom: 10,
        top: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: createStoryButton
                ? CircularButton(
                    buttonAction: () {
                      print('Create New Story');
                    },
                    buttonIcan: Icons.add,
                    Iconcolor: Colors.blue,
                  )
                : Avatar(
                    displayImage: avatar,
                    displaystatus: false,
                    displayBorder: displayBorder,
                    width: 40,
                    height: 40,
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
