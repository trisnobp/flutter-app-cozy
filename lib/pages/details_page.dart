import 'package:bwa_cozy/widgets/facilities_icon.dart';
import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/models/space.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.space});

  final Space space;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              space.imageUrl,
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  space.spaceName,
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(TextSpan(
                                  text: '\$${space.price}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: purple
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' / month',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: grey
                                      )
                                    )
                                  ]
                                ))
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/star.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 2,),
                                Image.asset(
                                  'assets/star.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 2,),
                                Image.asset(
                                  'assets/star.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 2,),
                                Image.asset(
                                  'assets/star.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 2,),
                                Image.asset(
                                  'assets/star.png',
                                  width: 20,
                                  height: 20,
                                  color: grey,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Main Facilities',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              )
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FacilitiesIcon(name: 'kitchens', amount: 2, image: 'assets/kitchen_logo.png'),
                                FacilitiesIcon(name: 'bedrooms', amount: 3, image: 'assets/bed_logo.png'),
                                FacilitiesIcon(name: 'cupboards', amount: 3, image: 'assets/cupboard_logo.png')
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Photos',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: 88,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Image.asset(
                                    'assets/bed.png',
                                    width: 110,
                                    height: 88,
                                  ),
                                  SizedBox(width: 18,),
                                  Image.asset(
                                    'assets/bath.png',
                                    width: 110,
                                    height: 88,
                                  ),
                                  SizedBox(width: 18,),
                                  Image.asset(
                                    'assets/sofa.png',
                                    width: 110,
                                    height: 88,
                                  ),
                                  SizedBox(width: 18,),
                                  Image.asset(
                                    'assets/bed.png',
                                    width: 110,
                                    height: 88,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Jln. Kappan Sukses No. 20\nPalembang',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: grey
                                  ),
                                ),
                                Image.asset(
                                  'assets/btn_location.png',
                                  width: 40,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width - 48,
                              child: ElevatedButton(
                                onPressed: (() {
                                  
                                }),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(17))),
                                    backgroundColor: MaterialStateProperty.all(purple),
                                ),
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18
                                  ),
                                ),
                              )
                            ),
                            SizedBox(
                              height: 30,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (() {
                      Navigator.pop(context);
                    }),
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  InkWell(
                    child: Image.asset(
                      'assets/btn_wishlist.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
