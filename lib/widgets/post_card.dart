import 'package:facebook_1/sections/header_butteon_section.dart';
import 'package:facebook_1/widgets/avatar.dart';
import 'package:facebook_1/widgets/blue_tick.dart';
import 'package:facebook_1/widgets/header_button.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String posttTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;
  PostCard({
    required this.avatar,
    required this.publishedAt,
    required this.name,
    required this.posttTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.shareCount,
    required this.commentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
         Divider(
          color: Colors.grey[300],
          thickness: 1,
         ),
         
          HeaderButteonSection(
            buttonOne: headerbutton(
                buttonText: 'like',
                buttonIcan: Icons.thumb_up_alt_outlined,
                buttonAction: () {
                  print('like this post');
                },
                buttonColor: Colors.grey),
            buttonTwo: headerbutton(
                buttonText: "Comments",
                buttonIcan: Icons.message_outlined,
                buttonAction: () {
                  print('Clik Comment button');
                },
                buttonColor: Colors.grey),
            buttonthree: headerbutton(
                buttonText: 'Share',
                buttonIcan: Icons.share_outlined,
                buttonAction: (){
                  print('shere this post');
                },
                buttonColor: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                displayText(labal: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(labal: commentCount),
                SizedBox(
                  width: 5,
                ),
                displayText(labal: "comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(labal: shareCount),
                SizedBox(
                  width: 5,
                ),
                displayText(labal: "shares"),
                SizedBox(
                  width: 10,
                ),
                Avatar(
                  displayImage: avatar,
                  displaystatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: () {
                    print('Dropdown pressed');
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String labal}) {
    return Text(
      labal == null ? "" : labal,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Image.asset(
        
        postImage,
      ),
    );
  }

  Widget titleSection() {
    return posttTitle!=null && posttTitle!= "" ? Container(
      padding: EdgeInsets.only(
        bottom: 5,
      ),
      child: Text(
        posttTitle == null ? "" : posttTitle,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    ):SizedBox() ;
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar, displaystatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            size: 20,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("post cart button ");
        },
        icon: Icon(Icons.more_horiz),
        color: Colors.grey[700],
      ),
    );
  }
}
