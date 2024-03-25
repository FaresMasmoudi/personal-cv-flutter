import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:personalcv/constants/colors.dart';
import 'package:personalcv/constants/size.dart';
import 'package:personalcv/constants/sns.links.dart';
import 'package:personalcv/widgets/contact.section.dart';
import 'package:personalcv/widgets/header.desktop.dart';
import 'package:personalcv/widgets/header.mobile.dart';
import 'package:personalcv/widgets/main.desktop.dart';
import 'package:personalcv/widgets/main.mobile.dart';
import 'package:personalcv/widgets/projects.section.dart';

import '../widgets/drawer.mobile.dart';
import '../widgets/footer.dart';
import '../widgets/skills.desktop.dart';
import '../widgets/skills.mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

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
            : DrawerMobile(onNavItemTap: (int navIndex) {
                // call function
                scaffoldKey.currentState?.closeEndDrawer();
                scrollToSection(navIndex);
              }),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(key: navbarKeys[0]),
              // MAIN
              if (constraints.maxWidth >= kMinDesktopWidth)
                HeaderDesktop(onNavMenuItemTap: (int navIndex) {
                  scrollToSection(navIndex);
                })
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
                key: navbarKeys[1],
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
              const SizedBox(height: 30),
              // PROJECTS
              ProjectsSection(key: navbarKeys[2]),

              const SizedBox(height: 30),
              // CONTACT
              ContactSection(key: navbarKeys[3]),
              // FOOTER
              const Footer(),
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      js.context.callMethod('open', [SnsLinks.cv]);
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
