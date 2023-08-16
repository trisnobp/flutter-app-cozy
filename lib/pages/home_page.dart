import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:bwa_cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // NOTE: HEADER
            Padding(
              padding: EdgeInsets.only(left: 24, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Explore Now",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  )),
                  SizedBox(height: 2,),
                  Text("Mencari kosan yang cozy",
                  style: TextStyle(
                    color: Color(0xff82868e),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  )),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Popular Cities",
                    style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            // NOTE: POPULAR CITIES
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 24,),
                  CityCard(
                    city: City(
                      id: 1,
                      name: "Jakarta",
                      imageUrl: "assets/pic1.png",
                      isPopular: false,
                    ),
                  ),
                  SizedBox(width: 20,),
                  CityCard(
                    city: City(
                      id: 2,
                      name: "Bandung",
                      imageUrl: "assets/pic2.png",
                      isPopular: true,
                    ),
                  ),
                  SizedBox(width: 20,),
                  CityCard(
                    city: City(
                      id: 3,
                      name: "Surabaya",
                      imageUrl: "assets/pic3.png",
                      isPopular: false,
                    ),
                  ),
                ],
              ),
            ),
            // NOTE: RECOMMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: 24, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recommended Space",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )
                  ),
                  SizedBox(height: 16,),
                  Column(
                    children: [
                      SpaceCard(
                        space: Space(
                          id: 1,
                          imageUrl: "assets/space1.png",
                          rating: 4,
                          location: "Bandung, Germany",
                          price: 52,
                          spaceName: "Kuratakeso Hott"
                        ),
                      ),
                      SizedBox(height: 30,),
                      SpaceCard(
                        space: Space(
                          id: 2,
                          imageUrl: "assets/space2.png",
                          rating: 5,
                          location: "Seattle, Bogor",
                          price: 11,
                          spaceName: "Roemah Nenek"
                        ),
                      ),
                      SizedBox(height: 30,),
                      SpaceCard(
                        space: Space(
                          id: 3,
                          imageUrl: "assets/space3.png",
                          rating: 3,
                          location: "Jakarta, Indonesia",
                          price: 20,
                          spaceName: "Darrling How"
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // NOTE: TIPS & GUIDANCE
            Padding(
              padding: EdgeInsets.only(left: 24, top: 30, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tips & Guidance",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TipsCard(
                    tips: Tips(
                      title: 'City Guidelines',
                      lastUpdatedDay: 20,
                      lastUpdatedMonth: 'Apr', 
                      imageUrl: 'assets/cityguide.png')
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    tips: Tips(
                      title: 'Jakarta Fairship',
                      lastUpdatedDay: 11,
                      lastUpdatedMonth: 'Dec', 
                      imageUrl: 'assets/jakartafair.png')
                  ),
                ]
              )
            ), 
          ],
        ),
      ),
    );
  }
}
