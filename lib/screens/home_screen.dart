import 'package:flutter/material.dart';
import '../widgets/headings_widget.dart';
import '../widgets/item_widget.dart';
import '../widgets/item_widget2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth <= 600;

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.grey,
            size: isSmallScreen ? 25 : 35,
          ),
          SizedBox(
            width: isSmallScreen ? 2 : 5,
          ),
          CircleAvatar(
            child: Image.asset('assets/Ellipse 1.png'),
          ),
          SizedBox(
            width: isSmallScreen ? 2 : 5,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(isSmallScreen ? 10.0 : 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    headlings_widget(
                      heading: 'Popular',
                    ),
                    SizedBox(
                      height: isSmallScreen ? 20 : 40,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          item_widget(
                            img: 'image 13',
                            text1: 'Modern Calligraphy',
                            text2: 'June and Lucy',
                            color1: Color(0xFFcef3fc),
                            color2: Colors.blue,
                            color3: Colors.grey,
                          ),
                          SizedBox(
                            width: isSmallScreen ? 20 : 40,
                          ),
                          item_widget(
                            img: 'image 16',
                            text1: 'Yves Saint Laurent',
                            text2: 'Suzy Menkes',
                            color1: Color(0xffda6d8f),
                            color2: Colors.brown,
                            color3: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: isSmallScreen ? 20 : 40,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    headlings_widget(
                      heading: 'For You',
                    ),
                    SizedBox(
                      height: isSmallScreen ? 20 : 40,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          item_widget2(
                            text1: 'Cat Secrets',
                            text2: 'Jef Czekaj',
                            img: 'image 13',
                            color1: Color(0xFFcef3fc),
                            color2: Colors.blue,
                            color3: Colors.grey,
                          ),
                          SizedBox(
                            width: isSmallScreen ? 20 : 40,
                          ),
                          item_widget2(
                            img: 'image 16',
                            text1: 'Yves Saint Laurent',
                            text2: 'Suzy Menkes',
                            color1: Color(0xffda6d8f),
                            color2: Colors.brown,
                            color3: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
