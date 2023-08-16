import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  const TipsCard({super.key, required this.tips});

  final Tips tips;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            width: 80,
            height: 80,
            child: Image.asset(
              tips.imageUrl
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Updated ${tips.lastUpdatedDay} ${tips.lastUpdatedMonth}",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: grey
              ),
            )
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.chevron_right),
          color: grey,)
      ],
    );
  }
}
