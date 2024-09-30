import 'package:facebook/assets.dart';
import 'package:facebook/widgets/postcards.dart';
import 'package:facebook/widgets/sections/Storysections.dart';
import 'package:facebook/widgets/sections/headerbuttonsection.dart';
import 'package:facebook/widgets/sections/roomSection.dart';
import 'package:facebook/widgets/sections/statusSection.dart';

import 'package:flutter/material.dart';
import 'package:facebook/widgets/circularButton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget ThinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );

    Widget ThickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print('Search Screen Appears');
                }),
            CircularButton(
                buttonIcon: Icons.chat,
                buttonAction: () {
                  print('messenger Screen Appears');
                })
          ],
        ),
        body: ListView(
          children: [
            const StatusSection(),
            ThinDivider,
            const HeaderButtonSection(),
            ThickDivider,
            const roomSection(),
            ThickDivider,
            const StorySections(),
            ThickDivider,
            Postcards(
              name: "Vijay_Sethupathi",
              Avatar: vijay,
              publishedAt: "5h",
              postTitle: "train",
              postImage: train,
              showBlueTick: true,
              likeCount: "10k",
              shareCount: "1k",
              commentCount: "1k",
            ),
            ThickDivider,
            Postcards(
              name: "Mammootty",
              Avatar: mammoty,
              publishedAt: "1day Ago",
              postTitle: "luckybaskhar",
              postImage: luckybaskhar,
              showBlueTick: true,
              likeCount: "100k",
              shareCount: "1k",
              commentCount: "1k",
            ),
            ThickDivider,
            ThickDivider,
            Postcards(
              name: "fafa",
              Avatar: fafa,
              publishedAt: "1day Ago",
              postTitle: "aavesham",
              postImage: aavesham1,
              showBlueTick: true,
              likeCount: "100k",
              shareCount: "1k",
              commentCount: "1k",
            ),
            ThickDivider,
            Postcards(
              name: "mammoty",
              Avatar: mammoty,
              publishedAt: "1day Ago",
              postTitle: "kalkiiii",
              postImage: kalaki,
              showBlueTick: true,
              likeCount: "100k",
              shareCount: "1k",
              commentCount: "1k",
            ),
          ],
        ),
      ),
    );
  }
}
