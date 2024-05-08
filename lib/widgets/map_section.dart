// lib/widgets/map_section.dart
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MapSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500, // Adjust the height as needed
      child: WebView(
        initialUrl: 'https://maps.google.com/?q=34.822362,10.739942',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
