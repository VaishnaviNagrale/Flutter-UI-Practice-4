import 'package:flutter/material.dart';

class DeatailInfoScreen extends StatelessWidget {
  String text1;
  String text2;
  String img;
  Color color1;
  Color color2;
  Color color3;
  DeatailInfoScreen(
      {required this.img,
      required this.text1,
      required this.text2,
      required this.color1,
      required this.color2,
      required this.color3});

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width <= 600;

    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: color1,
        actions: [
         const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          SizedBox(
            width: isSmallScreen ? 2 : 5,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(isSmallScreen ? 10.0 : 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                      fontSize: isSmallScreen ? 16 : 20,
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
                        color: color3),
                  ),
                  SizedBox(
                    height: isSmallScreen ? 15 : 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                            fit: BoxFit.cover,
                            image: AssetImage('assets/${img}.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: isSmallScreen ? 20 : 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                             const Text(
                                '⭐4.5',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: isSmallScreen ? 4 : 8,
                              ),
                              Text('Rating')
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                             const Text(
                                '102',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: isSmallScreen ? 4 : 8,
                              ),
                              Text('Pages')
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                             const Text(
                                'Eng',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: isSmallScreen ? 4 : 8,
                              ),
                             const Text('Languages')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: isSmallScreen ? 40 : 45,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(isSmallScreen ? 20.0 : 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: isSmallScreen ? 25 : 35),
                    ),
                    SizedBox(
                      height: isSmallScreen ? 20 : 25,
                    ),
                    Text(
                      'The book demonstrates the uses of traditional and cutting edge lettering tools, from classic calligraphy pens to bling-producing metallic foils and glue pens. It introduces a wide array of lettering styles with complete alphabets .',
                      style: TextStyle(fontSize: isSmallScreen ? 14 : 16),
                    ),
                    SizedBox(
                      height: isSmallScreen ? 25 : 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: isSmallScreen ? 200 : 300,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.red),
                            child:  Padding(
                              padding: const EdgeInsets.all(18.0),
                              child:  Text(
                                'Buy Now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: isSmallScreen ? 14 : 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
