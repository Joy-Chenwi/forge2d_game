//NOTE:  This is to overlay when the game is over
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Overlay extends StatelessWidget {
  const Overlay({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(0, -0.15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
          ).animate().slideX(duration: 750.ms, begin: -3, end: 0),
        ],
      ),
    );
  }
}
