import 'package:flutter/material.dart';
import 'package:personalcv/widgets/site_logo.dart';

import '../styles/style.dart';

class Header extends StatelessWidget {
  const Header({super.key, this.onLogoTap});

  final VoidCallback? onLogoTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 50, 20, 5),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: onLogoTap,
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
