import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class roomSection extends StatelessWidget {
  const roomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          CreateRoomButton(),
          avatar(
            displayImage: mammoty,
            displayStatus: true,
          ),
          avatar(displayImage: fafa, displayStatus: true),
          avatar(displayImage: vijay, displayStatus: true),
          avatar(displayImage: mammoty, displayStatus: true),
          avatar(displayImage: dulquer, displayStatus: true),
          avatar(displayImage: fafa, displayStatus: true),
          avatar(displayImage: vijay, displayStatus: true),
          avatar(displayImage: mammoty, displayStatus: true),
          avatar(displayImage: dulquer, displayStatus: true),
          avatar(displayImage: fafa, displayStatus: true),
          avatar(displayImage: vijay, displayStatus: true),
          avatar(displayImage: mammoty, displayStatus: true),
        ],
      ),
    );
  }
}

Widget CreateRoomButton() {
  return Container(
    padding: const EdgeInsets.only(right: 10, left: 5),
    child: OutlinedButton.icon(
      style: ButtonStyle(
          shape: WidgetStateProperty.all<OutlinedBorder>(
        const StadiumBorder(),
      )),
      icon: const Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: const Text(
        "Create\n Room",
        style: TextStyle(color: Colors.blue),
      ),
      onPressed: () {
        print("Create a chat Room");
      },
    ),
  );
}
