import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String title;
  final String url;
  const WebViewPage({super.key, required this.url, required this.title});

  static Future<void> navigate(
    BuildContext context,
    String title,
    String url,
  ) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewPage(
          title: title,
          url: url,
        ),
      ),
    );
  }

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
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
