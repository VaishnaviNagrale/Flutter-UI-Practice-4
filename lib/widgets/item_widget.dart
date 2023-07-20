import 'package:flutter/material.dart';

import '../screens/detail_info_screen.dart';

class item_widget extends StatelessWidget {
  String text1;
  String text2;
  String img;
  Color color1;
  Color color2;
  Color color3;
  item_widget({
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
    final double imgHeight = isSmallScreen ? 180 : 200;
    final double cardWidth = isSmallScreen ? 230 : 260;

    return GestureDetector(
      onDoubleTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DeatailInfoScreen(
              img: 'image 13',
              text1: 'Modern Calligraphy',
              text2: 'June and Lucy',
              color1: Color(0xFFcef3fc),
              color2: Colors.blue,
              color3: Colors.grey,
            ),
          ),
        );
      },
      child: Container(
        width: cardWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color1,
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          const  Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
              ],
            ),
          const  SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      top: isSmallScreen ? 10 : 20,
                      bottom: isSmallScreen ? 10 : 20,
                      left: isSmallScreen ? 3 : 5,
                      right: isSmallScreen ? 3 : 5,
                    ),
                    child: Image(
                      image: AssetImage('assets/${img}.png'),
                      height: imgHeight,
                    ),
                  ),
                ),
                SizedBox(
                  height: isSmallScreen ? 6 : 8,
                ),
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: isSmallScreen ? 14 : 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: isSmallScreen ? 2 : 3,
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
          ],
        ),
      ),
    );
  }
}
