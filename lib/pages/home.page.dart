import 'package:flutter/material.dart';
import 'package:personalcv/constants/colors.dart';
import 'package:personalcv/constants/nav.items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // MAIN
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: double.maxFinite,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    CustomColor.bgLight1,
                ],
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                Container(
                  height: 150, // specify the height
                  width: 150, // specify the width
                  child: Image.asset(
                    'assets/iit_logo.png',
                    color: Colors.transparent,
                    colorBlendMode: BlendMode.dst
                  ),
                ),
                Spacer(),
                for(int i = 0; i < navTitles.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(
                        onPressed: (){},
                        child: Text(navTitles[i])),
                  ),
              ],
            ),
          ),
          // SKILLS
          Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey
          ),
          // PROJECTS
          Container(
              height: 500,
              width: double.maxFinite
          ),
          // CONTACT
          Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey
          ),
          // FOOTER
          Container(
              height: 500,
              width: double.maxFinite
          )
        ],
      ),
    );
  }
}
