import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/bluetick.dart';
import 'package:facebook/widgets/sections/footerButtonSection.dart';

import 'package:flutter/material.dart';

class Postcards extends StatelessWidget {
  final String Avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;

  const Postcards(
      {super.key, required this.Avatar,
      required this.name,
      required this.publishedAt,
      required this.postTitle,
      required this.postImage,
      required this.showBlueTick,
      required this.likeCount,
      required this.shareCount,
      required this.commentCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          postcardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
          const FooterbuttonSection(),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration:
                      const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                const SizedBox(
                  width: 5,
                ),
                displayText(label: "comments"),
                const SizedBox(
                  width: 10,
                ),
                displayText(label: shareCount),
                const SizedBox(
                  width: 5,
                ),
                displayText(label: "shares"),
                const SizedBox(
                  width: 10,
                ),
                avatar(
                  displayImage: Avatar,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: () {
                    print("DropDown Pressed");
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label ?? "",
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget imageSection() {
    return Container(
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return postTitle != ""
        ? Container(
            padding: const EdgeInsets.only(
              bottom: 5,
            ),
            child: Text(
              postTitle ?? "",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        : const SizedBox();
  }

  Widget postcardHeader() {
    return ListTile(
      leading: avatar(
        displayImage: train,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(width: 10),
          showBlueTick ? const Bluetick() : const SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt ?? ""),
          const SizedBox(width: 10),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("Öpen The More Menu");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
