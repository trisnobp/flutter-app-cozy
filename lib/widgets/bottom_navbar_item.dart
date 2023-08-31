import 'package:flutter/material.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem(
      {super.key, required this.image, required this.isActive});

  final String image;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        isActive ? 
        Image.asset(
          image,
          width: 26,
          height: 26,
          color: Color(0xFF7F74EB),
        ) : 
        Image.asset(
          image,
          width: 26,
          height: 26,
        ),
        Spacer(),
        isActive ?
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: Color(0xFF7F74EB),
              borderRadius: BorderRadius.vertical(top: Radius.circular(1000))),
        ) : 
        Container()
      ],
    );
  }
}
