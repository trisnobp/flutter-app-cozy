import 'package:bwa_cozy/theme.dart';
import 'package:flutter/cupertino.dart';


class FacilitiesIcon extends StatelessWidget {
  const FacilitiesIcon(
      {super.key,
      required this.name,
      required this.amount,
      required this.image});

  final String name;
  final int amount;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 32,
          height: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: '$amount',
            style: TextStyle(
              color: purple,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: ' $name',
                style: TextStyle(
                  color: Color(0xff7a7e86),
                  fontSize: 14,
                  fontWeight: FontWeight.w300
                )
              )
            ]
          )
        )
      ],
    );
  }
}
