import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  const SpaceCard({Key? key, required this.space}) : super(key: key);

  final Space space;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            width: 130,
            height: 110,
            child: Stack(
              children: [
                Image.asset(
                  space.imageUrl,
                  width: 130,
                  height: 110,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: purple,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(36)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/star.png',
                          width: 18,
                          height: 18,
                        ),
                        Text(
                          "${space.rating}/5",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              space.spaceName,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text.rich(TextSpan(
              text: "\$${space.price}",
              style: TextStyle(
                color: purple,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              children: [
                TextSpan(
                    text: " / month",
                    style: TextStyle(
                      color: grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    )),
              ],
            )),
            SizedBox(
              height: 16,
            ),
            Text(
              space.location,
              style: TextStyle(
                color: grey,
                fontWeight: FontWeight.w300,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
