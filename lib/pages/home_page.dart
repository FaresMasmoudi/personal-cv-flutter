import 'package:flutter/material.dart';
import 'package:personalcv/constants/colors.dart';
import 'package:personalcv/constants/contact_links.dart';
import 'package:personalcv/widgets/contact_section.dart';
import 'package:personalcv/widgets/header.dart';
import 'package:personalcv/widgets/main.dart';
import 'package:personalcv/widgets/projects_section.dart';

import '../widgets/drawer.dart';
import '../widgets/footer.dart';
import '../widgets/skills.dart';
import '../widgets/web_view_screen.dart';

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
      return Stack(
        children: [
          Scaffold(
            key: scaffoldKey,
            backgroundColor: CustomColor.scaffoldBg,
            endDrawer: DrawerMobile(onNavItemTap: (int navIndex) {
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
                  // Accueil
                  Header(
                    onLogoTap: () {},
                  ),

                  const Main(),

                  // Compétences

                  Container(
                    key: navbarKeys[1],
                    width: screenWidth,
                    color: CustomColor.bgLight1,
                    padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //title
                        Text(
                          "Mes compétences",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary,
                          ),
                        ),
                        SizedBox(height: 20),
                        // platforms and skills
                        Skills(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Projets
                  ProjectsSection(key: navbarKeys[2]),

                  const SizedBox(height: 30),
                  // Contact
                  ContactSection(key: navbarKeys[3]),
                  // Footer
                  const Footer(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 50.0,
            right: 30.0,
            child: IconButton(
              icon: const Icon(Icons.menu, color: CustomColor.whitePrimary),
              onPressed: () {
                scaffoldKey.currentState?.openEndDrawer();
              },
            ),
          ),
        ],
      );
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WebViewScreen(url: ContactLinks.cv),
        ),
      );
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
