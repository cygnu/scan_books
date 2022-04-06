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
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.book.volumeInfo.title),
      ),
      body: Container(
        child: Column(
          children: [
            if (_isLoading) const LinearProgressIndicator(),
            Expanded(
              child: WebView(
                initialUrl: widget.book.volumeInfo.infoLink,
                javascriptMode: JavascriptMode.unrestricted,
                onPageStarted: (String url) {
                  setState(() {
                    _isLoading = true;
                  });
                },
                onPageFinished: (String url) {
                  setState(() {
                    _isLoading = false;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
