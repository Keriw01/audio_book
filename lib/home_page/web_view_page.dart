import 'package:flutter/material.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;
  const WebViewPage({super.key, required this.url});

  static Future<void> navigate(
    BuildContext context,
    String url,
  ) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewPage(
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
      appBar: AppBar(title: Text(S.of(context).pdfPageTitle)),
      body: WebViewWidget(controller: controller),
    );
  }
}
