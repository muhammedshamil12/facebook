import 'package:facebook_1/assets_image.dart';
import 'package:facebook_1/sections/header_butteon_section.dart';
import 'package:facebook_1/sections/roomsection.dart';
import 'package:facebook_1/sections/seggestion_section.dart';
import 'package:facebook_1/sections/status_section.dart';
import 'package:facebook_1/sections/story_section.dart';
import 'package:facebook_1/widgets/circular_button.dart';
import 'package:facebook_1/widgets/header_button.dart';
import 'package:facebook_1/widgets/post_Card.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );

    Widget thickDividar = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcan: Icons.search,
              buttonAction: () {
                print('go to search');
              },
            ),
            CircularButton(
              buttonIcan: Icons.chat,
              buttonAction: () {
                print('go to chat');
              },
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButteonSection(
              buttonOne: headerbutton(
                buttonAction: () {
                  print('Go live');
                },
                buttonColor: Colors.red,
                buttonIcan: Icons.video_call,
                buttonText: "Live",
              ),
              buttonTwo: headerbutton(
                buttonText: 'photo',
                buttonIcan: Icons.photo_library,
                buttonAction: () {
                  print('Take photo');
                },
                buttonColor: Colors.green,
              ),
              buttonthree: headerbutton(
                  buttonText: 'Room',
                  buttonIcan: Icons.video_call,
                  buttonAction: (){
                    print('Create Room');
                  },
                  buttonColor: Colors.purple),
            ),
            thickDividar,
            const RoomSection(),
            thickDividar,
            StorySection(),
            thickDividar,
            PostCard(
              avatar: mohanlal,
              name: "Mohanlal",
              publishedAt: "5h",
              posttTitle: 'Happy Diwali',
              postImage: poste,
              showBlueTick: true,
              likeCount: '2k',
              commentCount: '1k',
              shareCount: '1k',
            ),
            thickDividar,
               PostCard(
              avatar: honey,
              name: "Honey",
              publishedAt: "3h",
              posttTitle: 'Happy Annivarsary',
              postImage: tovi,
              showBlueTick: true,
              likeCount: '1k',
              commentCount: '1k',
              shareCount: '1k',
            ),
            thickDividar,
            SeggestionSection(),
            thickDividar,
               PostCard(
              avatar: babu,
              name: "Babu",
              publishedAt: "7h",
              posttTitle: 'Rolex',
              postImage: surya,
              showBlueTick: true,
              likeCount: '10k',
              commentCount: '11k',
              shareCount: '13k',
            ),
            thickDividar,
          ],
        ),
      ),
    );
  }
}
