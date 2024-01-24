import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 308,
      height: 190,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.92, -0.38),
          end: Alignment(-0.92, 0.38),
          colors: [Color(0xFFE2A983), Color(0xFFE5BCE7)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19E4B6CA),
            blurRadius: 120,
            offset: Offset(0, 19),
            spreadRadius: 0,
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 117,
            child: Text(
              '5671  2345  8900  1024',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Product Sans',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 150,
            child: Text(
              'Boluwatife Vaughan',
              style: TextStyle(
                color: Color(0xFF161616),
                fontSize: 16,
                fontFamily: 'Product Sans',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 272,
            top: 150,
            child: Text(
              '10/26',
              style: TextStyle(
                color: Color(0xFF161616),
                fontSize: 14,
                fontFamily: 'Product Sans',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 26,
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Debit Card',
                    style: TextStyle(
                      color: Color(0xFF161616),
                      fontSize: 16,
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  const SizedBox(width: 174),
                  Container(
                    width: 50,
                    height: 30,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE33A24),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 0,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: Color(0xCCF7CB2E),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
