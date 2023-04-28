import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

import 'web_view_container.dart';

class Home extends StatelessWidget {
  final _links = ['https://google.com', 'https://microsoft.com'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _links.map((link) => _urlbutton(context, link))
          )
        )
      ),
    );
  }
  Widget _urlbutton(BuildContext context, String url) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: TextButton(
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
        child: Text(url),
        onPressed: () => _handleURLButtonPressed(context, url),
      )
    );

  }
  void _handleURLButtonPressed(BuildContext context, String url) {
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => WebViewContainer(url))
    );
  }
}