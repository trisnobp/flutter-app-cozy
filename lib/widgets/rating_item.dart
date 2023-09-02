import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key, required this.index, required this.rating});

  final int index;
  final int rating;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating ? 'assets/star.png' : 'assets/Icon_star_solid.png',
      width: 20,
      height: 20,
    );
  }
}
