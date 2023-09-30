import 'package:facebook_1/assets_image.dart';
import 'package:facebook_1/widgets/saggestion_card.dart';
import 'package:flutter/material.dart';

class SeggestionSection extends StatelessWidget {
  const SeggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text('people You May know'),
            trailing: IconButton(
              onPressed: () {
                print('More Clicked');
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
             scrollDirection: Axis.horizontal,
               children: [
                  SaggestionCard(
                    name: "Pranav Mohanlal",
                    avatar: sane,
                    addFriend: () {
                      print('Requesd Friendship!!');
                    },
                    mutualFriends: "4 Mutual Friende",
                    removoFriend: () {
                      print('removo this parson!!');
                    },

                  ),
                   SaggestionCard(
                    name: "babu",
                    avatar: babu,
                    addFriend: () {
                      print('Requesd Friendship!!');
                    },
                    mutualFriends: "1 Mutual Friende",
                    removoFriend: () {
                      print('removo this parson!!');
                    },

                  ),
                   SaggestionCard(
                    name: " Mohanlal",
                    avatar: mohanlal,
                    addFriend: () {
                      print('Requesd Friendship!!');
                    },
                    mutualFriends: "5 Mutual Friende",
                    removoFriend: () {
                      print('removo this parson!!');
                    },

                  ),
                   SaggestionCard(
                    name: "Surya",
                    avatar: surya,
                    addFriend: () {
                      print('Requesd Friendship!!');
                    },
                    mutualFriends: "3 Mutul Friende",
                    removoFriend: () {
                      print('removo this parson!!');
                    },

                  ),
               ],
            ),
            
          ),
        ],
      ),

    );
  }
}
