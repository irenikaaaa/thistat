import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LikeButton(
          size: 120,
          /*bubblesColor: BubblesColor(
            dotPrimaryColor: Colors.black,
            dotSecondaryColor: Colors.red,
          ),*/
          //animationDuration: Duration(milliseconds: 20000),
          likeCount: 120,
          countPostion: CountPostion.bottom,
          /*likeBuilder: (isTapped) {
            return Icon(
              Icons.star,
              color: isTapped ? Colors.deepPurple : Colors.grey,
              size: 120,
            );
          },*/
        ),
      ),
    );
  }
}
