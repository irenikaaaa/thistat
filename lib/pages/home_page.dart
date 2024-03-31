import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tthat/pages/card.dart';
import 'package:tthat/pages/suits.dart';

import 'card_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _animationStatus = status;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade800,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardItem(
                    number: '10',
                    suit: ring(),
                  ),
                  CardItem(
                    number: 'J',
                    suit: monkey(),
                  ),
                ],
              ),
              Transform.rotate(
                angle: pi / 2,
                child: const CardBack(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardItem(
                    number: 'A',
                    suit: heart(),
                  ),
                  CardItem(
                    number: 'Q',
                    suit: unicorn(),
                  ),
                  getFlippingCard('3', ring())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getFlippingCard(var number, var suit) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.002)
        ..rotateZ(pi * _animation.value),
      child: GestureDetector(
        onTap: () {
          if (_animationStatus == AnimationStatus.dismissed) {
            _animationController.forward();
          } else {
            _animationController.reverse();
          }
        },
        child: _animation.value >= 0.5
            ? const CardBack()
            : CardItem(suit: suit, number: number),
      ),
    );
  }
}
