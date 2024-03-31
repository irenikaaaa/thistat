import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool marked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              if (marked == false) {
                marked = true;
                _controller.forward();
              } else {
                marked = false;
                _controller.reverse();
              }
            },
            child: Lottie.asset(
              'assets/images/fly.json',
              controller: _controller,
            ),
          ),
          Lottie.asset(
            'assets/images/fly.json',
          ),
        ],
      ),
    );
  }
}
