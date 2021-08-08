import 'package:flutter/material.dart';

class WebViewScreen extends StatefulWidget {
  static const route = 'web_view_screen';

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('webview'),
      ),
    );
  }
}
