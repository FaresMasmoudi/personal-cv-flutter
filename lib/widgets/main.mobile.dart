import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        height: screenHeight,
        constraints: const BoxConstraints(minHeight: 560),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // profile image
            Image.asset(
              'assets/profile_image.png',
              width: screenWidth,
            ),
            const SizedBox(height: 30),
            const Text(
              "Hi, \nI'm Fares Masmoudi\nA Software Engineering Student\nWith a strong passion for technology and innovation",
              style: TextStyle(
                fontSize: 24,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 190,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Contact Me"),
              ),
            ),

            //intro text

            // contact button
          ],
        ));
  }
}
