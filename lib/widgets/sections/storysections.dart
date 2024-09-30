import 'package:facebook/widgets/storycard.dart';
import 'package:flutter/material.dart';

import '../../assets.dart';

class StorySections extends StatelessWidget {
  const StorySections({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            LabelText: "Add To Story",
            Avatar: mammoty,
            story: mammoty,
            createStoryStatus: true,
            dispalyBorder: true,
          ),
          StoryCard(
            LabelText: "Dulquer ",
            Avatar: dulquer,
            story: new1,
            dispalyBorder: true,
          ),
          StoryCard(
            LabelText: "fafa ",
            Avatar: fafa,
            story: aavesham,
            dispalyBorder: true,
          ),
          StoryCard(
            LabelText: "vjs ",
            Avatar: vijay,
            story: train,
            dispalyBorder: true,
          ),
        ],
      ),
    );
  }
}
