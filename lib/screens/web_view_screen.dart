import 'package:flutter/material.dart';
import 'package:scan_books/models/google_book_response.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  static const route = 'web_view_screen';

  const WebViewScreen({Key? key, required this.book}) : super(key: key);
  final GoogleBookResponse book;

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          LinearProgressIndicator();
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
      ),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.book.volumeInfo.title),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: WebViewWidget(
                controller: controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
