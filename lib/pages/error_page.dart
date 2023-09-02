import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/404.png',
                width: 300,
                height: 85.95,
              ),
              SizedBox(
                height: 70.05,
              ),
              Text(
                'Where are you going?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Seems like the page that you requested\n is already gone',
                style: TextStyle(
                  color: Color(0xff82868E),
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 165,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17)
                        )
                      ),
                      backgroundColor: MaterialStateProperty.all(purple)
                    ),
                    child: Text(
                      'Back to Home',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white
                      ),
                    ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
