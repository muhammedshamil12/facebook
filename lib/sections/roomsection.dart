import 'package:facebook_1/assets_image.dart';
import 'package:facebook_1/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
         
         createRoomButton(),
         Avatar(displayImage: dulquer,displaystatus: true,  ),
         Avatar(displayImage: mamuty,displaystatus: true,),
         Avatar(displayImage: mohanlal,displaystatus: true,),
         Avatar(displayImage: sane,displaystatus: true,),
         Avatar(displayImage: jayaram,displaystatus: true,),
         Avatar(displayImage: mamuty,displaystatus: true,),
         Avatar(displayImage: mohanlal,displaystatus: true,),
         Avatar(displayImage: sane,displaystatus: true,),
         Avatar(displayImage: jayaram,displaystatus: true,),
         
        ],
      ),
    );
  

  }
  Widget createRoomButton(){
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5),
      child: OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              shape: StadiumBorder(
                side: BorderSide(color: Colors.blue, width: 2),
              ),
            ),
            onPressed: () {
              print('Create a chat room');
            },
            icon: const Icon(
              Icons.video_call,
              color: Colors.purple,
            ),
            label: const Text(
              'Create \nRoom',
              style: TextStyle(color: Colors.blue),
            ),
          ),
    ) ;
  }
}
