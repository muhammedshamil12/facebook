import 'package:facebook_1/assets_image.dart';
import 'package:facebook_1/widgets/storycart.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCart(
            labelText: 'Add To Story',
            avatar: dulquer,
            story: dulquer,
            createStoryButton: true,
          ),
          StoryCart(
            labelText: 'Mohan Lal',
            story: poste,
            avatar: mohanlal,
            displayBorder: true,
          ),
          StoryCart(
            labelText: "Mammootty",
            story: image1,
            avatar: mamuty,
            displayBorder: true,
          ),
          StoryCart(
            labelText: "Dq",
            story: tovi,
            avatar: dulquer,
            displayBorder: true,
          ),
          StoryCart(
            labelText: "Honey",
            story: image2,
            avatar: honey,
            displayBorder: true,
          ),
          StoryCart(
            labelText: "karthik",
            story: image3,
            avatar: karthik,
            displayBorder: true,
          ),
          StoryCart(
            labelText: "surya",
            story: babu,
            avatar: surya,
            displayBorder: true,
          ),
          StoryCart(
            labelText: "jayaram",
            story: surya,
            avatar: jayaram,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
