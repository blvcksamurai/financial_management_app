// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/custom_options.dart';
import 'widgets/debitCard1.dart';
import 'widgets/debitCard2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0a0a0a),
        body: Container(
          margin: EdgeInsets.fromLTRB(25, 40, 25, 10),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 330,
                    height: 52,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    decoration: ShapeDecoration(
                      color: Color(0xFF191919),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(47),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/search.svg'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Pay by name or phone number',
                          style: TextStyle(
                            color: Color(0xFF9F9F9F),
                            fontSize: 16,
                            fontFamily: 'Product Sans',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Image(image: AssetImage('assets/images/notification.png')),
                  SvgPicture.asset(
                    'assets/images/notification.svg',
                    width: 27,
                  )
                ],
              ),
              Container(
                width: 181,
                height: 55,
                margin: EdgeInsets.only(top: 40, bottom: 40),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Available Balance',
                      style: TextStyle(
                        color: Color(0xFF8E8E8E),
                        fontSize: 16,
                        fontFamily: 'Product Sans',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '\$ 10,500,000',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontFamily: 'Product Sans',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DebitCard1(),
                    SizedBox(width: 20),
                    DebitCard2(),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Pay and Receive',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Product Sans',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomOptions(
                    image: 'assets/images/scanbarcode.svg',
                    text: 'Scan QR Code',
                  ),
                  CustomOptions(
                    image: 'assets/images/mobile.svg',
                    text: 'Mobile Recharge',
                  ),
                  CustomOptions(
                    image: 'assets/images/bank.svg',
                    text: 'Bank Transfer',
                  ),
                  CustomOptions(
                    image: 'assets/images/book1.svg',
                    text: 'Pay Bills',
                  ),
                  CustomOptions(
                    image: 'assets/images/profile.svg',
                    text: 'Pay to Contacts',
                  )
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Recent Activity',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Product Sans',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 120,
                width: 335,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/activity.svg',
                      width: 100,
                    ),
                    const SizedBox(width: 18),
                    Container(
                      width: 209,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 220,
                            child: Text(
                              'Keep Track of your transactions',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Product Sans',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: 220,
                            child: Text(
                              'New Transactions will appear here',
                              style: TextStyle(
                                color: Color(0xFF959595),
                                fontSize: 14,
                                fontFamily: 'Product Sans',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
