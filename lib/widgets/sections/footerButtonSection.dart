import 'package:flutter/material.dart';

class FooterbuttonSection extends StatelessWidget {
  const FooterbuttonSection({super.key});

  Widget footerbutton({
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
          footerbutton(
              buttonAction: () {
                print("liked");
              },
              buttonIcon: Icons.thumb_up,
              buttonColor: Colors.grey,
              buttonText: "like"),
          verticalDivider,
          footerbutton(
              buttonAction: () {
                print("Commented");
              },
              buttonIcon: Icons.comment,
              buttonColor: Colors.grey,
              buttonText: "Comment"),
          verticalDivider,
          footerbutton(
              buttonAction: () {
                print("Shared");
              },
              buttonIcon: Icons.share,
              buttonColor: Colors.grey,
              buttonText: "Share"),
        ],
      ),
    );
  }
}
