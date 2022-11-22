import 'package:bwa_cozy/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/bottom.png"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 50,
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/logo.png",
                    width: 50,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Find Cozy House\nto Stay and Happy",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Stop membuang banyak waktu\npada tempat yang tidak habitable",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: grey,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    width: 210,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => HomePage()),
                            ));
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17))),
                        backgroundColor: MaterialStateProperty.all(purple),
                      ),
                      child: Text(
                        "Explore Now",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
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
