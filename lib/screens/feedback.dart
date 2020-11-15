import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smkdev/constant/consts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FeedBacks extends StatefulWidget {
  @override
  _FeedbackState createState() => _FeedbackState();
}

class _FeedbackState extends State<FeedBacks> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        child: WebView(
          initialUrl: feedbackUrl,
        ),
      ),
    );
  }
}
