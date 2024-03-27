import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        constraints: const BoxConstraints(minHeight: 700),
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
              "Bonjour, \nJe suis Fares Masmoudi\nÉtudiant Ingénieur à l'IIT\nPassionné par les nouvelles technologies web\nDéveloppeur Full Stack\nSpring Boot + Angular",
              style: TextStyle(
                fontSize: 24,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 190,
              child: ElevatedButton(
                onPressed: () => {},
                child: const Text("Contactez Moi"),
              ),
            ),
          ],
        ));
  }
}
