import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomOptions extends StatelessWidget {
  String image;
  String text;
  CustomOptions({
    required this.image,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 60,
      child: Column(
        children: [
          SvgPicture.asset(image),
          SizedBox(height: 10),
          SizedBox(
            width: 64,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontFamily: 'Product Sans',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
