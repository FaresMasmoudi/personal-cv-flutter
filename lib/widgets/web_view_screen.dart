import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewScreen extends StatelessWidget {
  final String url;

  WebViewScreen({required this.url});

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url,
      appBar: AppBar(
        title: Text('Web View'),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              final webViewPlugin = FlutterWebviewPlugin();
              webViewPlugin.reload();
            },
          ),
        ],
      ),
      withZoom: true,
      withLocalStorage: true,
      initialChild: Center(child: CircularProgressIndicator()),
    );
  }
}
