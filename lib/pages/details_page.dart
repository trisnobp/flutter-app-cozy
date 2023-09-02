import 'package:bwa_cozy/pages/error_page.dart';
import 'package:bwa_cozy/widgets/facilities_icon.dart';
import 'package:bwa_cozy/widgets/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.space});

  final Space space;

  @override
  Widget build(BuildContext context) {
    // Ubah data type objek yang di list of photos jadi String

    launchErrorPage() {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => ErrorPage())));
    }

    _launchURL(String url) async {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      } else {
        launchErrorPage();
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
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
                                  space.name,
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
                                        color: purple),
                                    children: [
                                      TextSpan(
                                          text: ' / month',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: grey))
                                    ]))
                              ],
                            ),
                            Row(
                                children: [1, 2, 3, 4, 5].map<Widget>((e) {
                              return Padding(
                                padding: EdgeInsets.only(right: e != 5 ? 5 : 0),
                                child: RatingItem(
                                  index: e,
                                  rating: space.rating,
                                ),
                              );
                            }).toList())
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
                            Text('Main Facilities',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FacilitiesIcon(
                                    name: 'kitchens',
                                    amount: space.numberOfKitchens,
                                    image: 'assets/kitchen_logo.png'),
                                FacilitiesIcon(
                                    name: 'bedrooms',
                                    amount: space.numberOfBedrooms,
                                    image: 'assets/bed_logo.png'),
                                FacilitiesIcon(
                                    name: 'cupboards',
                                    amount: space.numberOfKitchens,
                                    image: 'assets/cupboard_logo.png')
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Photos',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: 88,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: space.photos.map<Widget>((e) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 18),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(17),
                                        child: Image.network(
                                          e,
                                          width: 110,
                                          height: 88,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  }).toList()),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  space.address,
                                  style: TextStyle(fontSize: 14, color: grey),
                                ),
                                InkWell(
                                  onTap: () {
                                    _launchURL(space.mapUrl);
                                  },
                                  child: Image.asset(
                                    'assets/btn_location.png',
                                    width: 40,
                                  ),
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
                                    _launchURL('tel:${space.phone}');
                                  }),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(17))),
                                    backgroundColor:
                                        MaterialStateProperty.all(purple),
                                  ),
                                  child: Text(
                                    'Book Now',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                )),
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
