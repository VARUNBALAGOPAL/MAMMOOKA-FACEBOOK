import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  const HeaderButtonSection({super.key});

  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
  }) {
    return TextButton.icon(
      onPressed: (buttonAction),
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(buttonText),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );

    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
              buttonAction: () {
                print("Go Live");
              },
              buttonIcon: Icons.video_call,
              buttonColor: Colors.red,
              buttonText: "Live"),
          verticalDivider,
          headerButton(
              buttonAction: () {
                print("take Photo");
              },
              buttonIcon: Icons.photo_library,
              buttonColor: Colors.green,
              buttonText: "photo"),
          verticalDivider,
          headerButton(
              buttonAction: () {
                print("Create Chat Room");
              },
              buttonIcon: Icons.video_call,
              buttonColor: Colors.purple,
              buttonText: "Room"),
        ],
      ),
    );
  }
}
