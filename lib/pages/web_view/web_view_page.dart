import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Web View Page is used to display the book in text format
@AutoRoute()
class WebViewPage extends StatefulWidget {
  final String title;
  final String url;
  const WebViewPage({super.key, required this.title, required this.url});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  // WebViewController for controlling the WebView
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    // Initialize the WebViewController and load the specified URL
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.url),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: WebViewWidget(controller: controller),
    );
  }
}
