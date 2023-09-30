import 'package:facebook_1/assets_image.dart';
import 'package:flutter/material.dart';

class SaggestionCard extends StatelessWidget {

final String avatar;
final String name;
final String mutualFriends;
final void Function() addFriend;
final void Function()removoFriend;

  SaggestionCard({
    required this.avatar,
    required this.name,
    required this.mutualFriends,
    required this.addFriend,
    required this.removoFriend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          SuggestionImage(),
          SuggestionDetails(),
        ],
      ),
    );
  }

  Widget SuggestionDetails() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(name),
              subtitle: Text(mutualFriends),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconbutton(
                      buttonAcetion:addFriend,
                      buttonIcon: Icons.add_moderator,
                      buttonColor: Colors.blue,
                      buttonTextColor: Colors.white,
                      buttonIconColor: Colors.white,
                      buttonText: "Add Friend"),
                  blankButton(
                      buttonAcetion: removoFriend,
                      buttonText: 'Remove',
                      buttonColor: Colors.white,
                      buttonTextColor: Colors.grey),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget blankButton({
    required Function() buttonAcetion,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
      onPressed: buttonAcetion,
      child: Text(
        buttonText ,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget iconbutton({
    required void Function() buttonAcetion,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return ElevatedButton.icon(
      onPressed: buttonAcetion,
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
      style: ElevatedButton.styleFrom(primary: buttonColor),
    );
  }

  Widget SuggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: Image.asset(
          avatar,
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
