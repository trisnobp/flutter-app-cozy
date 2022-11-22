import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City city;
  const CityCard({Key? key, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                city.imageUrl,
                width: 120,
                height: 102,
                fit: BoxFit.cover,
              ),
            city.isPopular ? Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                  color: purple,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    "assets/star.png",
                    width: 22,
                    height: 22,
                  ),
                ),
              ),
            ) : Container(),
          ]),
            SizedBox(
              height: 11,
            ),
            Text(
              city.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
