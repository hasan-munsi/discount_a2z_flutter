import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomWebViewPage extends StatelessWidget {
  CustomWebViewPage(this.brokenUrl);
  final String brokenUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: WebView(
            initialUrl: "https://www.discounta2z.com/search-page/offer_cat/" +
                brokenUrl,
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }
}
