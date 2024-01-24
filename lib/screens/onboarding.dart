// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0a0a0a),
        body: Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(40, 60, 40, 0),
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 297,
                  height: 175,
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                      text: 'Transform the way you handle ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontFamily: 'Clash Display',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: 'money',
                      style: TextStyle(
                        color: Color(0xFFE5BCE7),
                        fontSize: 42,
                        fontFamily: 'Clash Display',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ])),
                ),
                SizedBox(
                  width: 297,
                  child: Text(
                    'Track your spending and save for what matters.',
                    style: TextStyle(
                      color: Color(0xFFAFAFAF),
                      fontSize: 18,
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Image(
                  image: AssetImage('assets/images/onboarding.png'),
                  width: 274,
                ),
                // SvgPicture.asset(
                //   'assets/images/onboarding.svg',
                //   width: 274),
                SizedBox(height: 20),
                Container(
                  width: 325,
                  height: 54,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  decoration: ShapeDecoration(
                    color: Color(0xFFE5BCE7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Product Sans',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
