import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class HomePage4 extends StatelessWidget {
  const HomePage4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AvatarGlow(
          endRadius: 200,
          glowColor: Colors.blue,
          duration: Duration(milliseconds: 2000),
          repeatPauseDuration: Duration(milliseconds: 100),
          child: Text(
            '💎',
            style: TextStyle(fontSize: 140),
          ),
        ),
      ),
    );
  }
}
