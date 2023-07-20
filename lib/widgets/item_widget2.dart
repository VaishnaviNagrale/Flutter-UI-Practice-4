import 'package:flutter/material.dart';

class item_widget2 extends StatelessWidget {
  String text1;
  String text2;
  String img;
  Color color1;
  Color color2;
  Color color3;
  item_widget2({
    required this.img,
    required this.text1,
    required this.text2,
    required this.color1,
    required this.color2,
    required this.color3,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth <= 600;
    final double cardWidth = isSmallScreen ? 220 : 250;
    final double cardHeight = isSmallScreen ? 200 : 250;

    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          width: cardWidth,
          height: cardHeight,
          margin: EdgeInsets.all(isSmallScreen ? 12.0 : 25.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(isSmallScreen ? 15 : 20),
            ),
            color: color1,
            child: Padding(
              padding: EdgeInsets.all(isSmallScreen ? 12.0 : 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                      fontSize: isSmallScreen ? 16 : 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: isSmallScreen ? 1 : 2,
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      fontSize: isSmallScreen ? 12 : 15,
                      fontWeight: FontWeight.w600,
                      color: color3,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: isSmallScreen ? 150 : 200,
          width: isSmallScreen ? 150 : 200,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                  border: Border(
                    left: BorderSide(width: 5.0, color: color2),
                  ),
                ),
                child: Container(
                  color: color1,
                  padding: EdgeInsets.only(
                      top: isSmallScreen ? 20 : 30,
                      bottom: isSmallScreen ? 20 : 30,
                      left: isSmallScreen ? 3 : 5,
                      right: isSmallScreen ? 3 : 5),
                  child: Image(
                    image: AssetImage('assets/${img}.png'),
                  ),
                ),
              ),
              SizedBox(
                width: isSmallScreen ? 10 : 20,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
