import 'package:flutter/material.dart';

class CardBack extends StatelessWidget {
  const CardBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 150,
          width: 100,
          color: Colors.white,
          child: Image.asset('assets/images/cardback.png'),
        ),
      ),
    );
  }
}
