import 'package:flutter/material.dart';

class headlings_widget extends StatelessWidget {
  String heading;
  headlings_widget({required this.heading});

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width <= 600;
    final double headingFontSize = isSmallScreen ? 20 : 25;
    final double seeAllFontSize = isSmallScreen ? 14 : 17;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: headingFontSize),
        ),
        Text(
          'see all',
          style: TextStyle(
            fontSize: seeAllFontSize,
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
