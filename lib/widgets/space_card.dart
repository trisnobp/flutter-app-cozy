import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  const SpaceCard({Key? key}) : super(key: key);

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
                  'assets/space1.png',
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
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36)
                      ),
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
                          "4/5",
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
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kuretakeso Hott",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 2,),
            Text.rich(
              TextSpan(
                text: "\$52",
                style: TextStyle(
                  color: purple,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                children: [
                  
                ],
              )
            ),
          ],
        ),
      ],
    );
  }
}
