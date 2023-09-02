import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/providers/space_provider.dart';
import 'package:bwa_cozy/widgets/bottom_navbar_item.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:bwa_cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);

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
                  SizedBox(
                    height: 2,
                  ),
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
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    city: City(
                      id: 1,
                      name: "Jakarta",
                      imageUrl: "assets/pic1.png",
                      isPopular: false,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 2,
                      name: "Bandung",
                      imageUrl: "assets/pic2.png",
                      isPopular: true,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
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
            // NOTE: RECOMMENDED
            Padding(
              padding: EdgeInsets.only(left: 24, top: 30),
              child: Text("Recommended Space",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: FutureBuilder(
                  future: spaceProvider.getRecommendedSpaces(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Space> data = snapshot.data as List<Space>;
                      int index = 0;
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: data.map((item) {
                            index++;
                            return Container(
                              margin: EdgeInsets.only(
                                top: index == 1 ? 0 : 30
                              ),
                              child: SpaceCard(space: item));
                          }).toList());
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                )),
            // NOTE: TIPS & GUIDANCE
            Padding(
                padding: EdgeInsets.only(left: 24, top: 30, right: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tips & Guidance",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      TipsCard(
                          tips: Tips(
                              title: 'City Guidelines',
                              lastUpdatedDay: 20,
                              lastUpdatedMonth: 'Apr',
                              imageUrl: 'assets/cityguide.png')),
                      SizedBox(
                        height: 20,
                      ),
                      TipsCard(
                          tips: Tips(
                              title: 'Jakarta Fairship',
                              lastUpdatedDay: 11,
                              lastUpdatedMonth: 'Dec',
                              imageUrl: 'assets/jakartafair.png')),
                    ])),
            SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
          height: 65,
          width: MediaQuery.of(context).size.width - 48,
          margin: EdgeInsets.only(left: 24, right: 24, bottom: 30),
          decoration: BoxDecoration(
              color: Color(0xFFF6F7F8),
              borderRadius: BorderRadius.circular(23)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavBarItem(
                image: 'assets/home.png',
                isActive: true,
              ),
              BottomNavBarItem(
                image: 'assets/mail.png',
                isActive: false,
              ),
              BottomNavBarItem(
                image: 'assets/card.png',
                isActive: false,
              ),
              BottomNavBarItem(
                image: 'assets/love.png',
                isActive: false,
              )
            ],
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
