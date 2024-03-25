import 'package:flutter/material.dart';
import 'package:personalcv/constants/colors.dart';
import 'package:personalcv/constants/size.dart';
import 'package:personalcv/widgets/header.desktop.dart';
import 'package:personalcv/widgets/header.mobile.dart';
import 'package:personalcv/widgets/main.desktop.dart';
import 'package:personalcv/widgets/main.mobile.dart';

import '../widgets/drawer.mobile.dart';
import '../widgets/skills.desktop.dart';
import '../widgets/skills.mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
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
            // const MainDesktop(),
            if (constraints.maxWidth >= kMinDesktopWidth)
              const MainDesktop()
            else
              const MainMobile(),
            // SKILLS
            Container(
              width: screenWidth,
              color: CustomColor.bgLight1,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //title
                  const Text(
                    "What I can do",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  const SizedBox(height: 50),
                  // platforms and skills
                  if (constraints.maxWidth >= kMedDesktopWidth)
                    const SkillsDesktop()
                  else
                    const SkillsMobile(),
                ],
              ),
            ),
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
