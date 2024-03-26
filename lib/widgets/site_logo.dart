import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150, // specify the height
        width: 150, // specify the width
        child: Image.asset('assets/iit_logo.png',
            color: Colors.transparent, colorBlendMode: BlendMode.dst),
      ),
    );
  }
}
