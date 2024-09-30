import 'package:flutter/material.dart';

class avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double width;
  final double height;

  const avatar(
      {super.key, required this.displayImage,
      required this.displayStatus,
      this.displayBorder = false,
      this.width=50,
      this.height=50,
      
      });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: displayBorder
              ? Border.all(
                  color: Colors.blueAccent,
                  width: 3,
                )
              : const Border(),
        ),
        padding: const EdgeInsets.only(
          right: 10,
          left: 10,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            displayImage,
            width: width,
            height: height,
          ),
        ),
      ),
      displayStatus == true
          ? Positioned(
              bottom: 0,
              right: 1.0,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ))
          : const SizedBox(),
    ]);
  }
}
