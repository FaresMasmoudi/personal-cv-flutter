import 'package:flutter/material.dart';
import 'package:personalcv/constants/colors.dart';
import 'package:personalcv/constants/size.dart';
import 'package:personalcv/widgets/header.desktop.dart';
import 'package:personalcv/widgets/header.mobile.dart';

import '../widgets/drawer.mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // MAIN
            if (constraints.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      const Text(
                          "Hi, \nI'm Fares Masmoudi\nA Software Engineering Student\nwith a strong passion for technology and innovation"),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Contact Me"),
                      ),
                    ],
                  ),
                  Image.asset('assets/profile_image.png'),
                ],
              ),
            ),
            // SKILLS
            Container(
                height: 500, width: double.maxFinite, color: Colors.blueGrey),
            // PROJECTS
            Container(height: 500, width: double.maxFinite),
            // CONTACT
            Container(
                height: 500, width: double.maxFinite, color: Colors.blueGrey),
            // FOOTER
            Container(height: 500, width: double.maxFinite)
          ],
        ),
      );
    });
  }
}
