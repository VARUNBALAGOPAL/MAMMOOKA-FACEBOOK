import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String LabelText;
  final String story;
  final String Avatar;
  final bool createStoryStatus;
  final bool dispalyBorder;

  const StoryCard({super.key, 
    required this.LabelText,
    required this.story,
    required this.Avatar,
    this.createStoryStatus = false,
    this.dispalyBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(story),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(children: [
        Positioned(
            top: 5,
            left: 5,
            child: createStoryStatus
                ? CircularButton(
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                    buttonAction: () {
                      print("Create New Story");
                    },
                  )
                : avatar(
                    displayImage: Avatar,
                    displayStatus: false,
                    displayBorder: dispalyBorder,
                    width: 35,
                    height: 35,
                  )),
        Positioned(
          bottom: 10,
          left: 10,
          child: Text(
            LabelText != Null ? LabelText : "N/A",
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
