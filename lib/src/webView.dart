import 'package:flutter/material.dart';
// import 'package:huawei_ads/hms_ads_lib.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class WebViewClass extends StatefulWidget {
  final String url;
  final String title;
  WebViewClass({Key key, this.url, this.title}): super(key: key);
  @override
  _WebViewClassState createState() => _WebViewClassState();
}

class _WebViewClassState extends State<WebViewClass> {
//     BannerAd bannerAd = BannerAd(
//   adSlotId: "testw6vs28auh3", // This is test slot id for banner ad
//   size: BannerAdSize.s320x50, // Banner size
//   adParam: AdParam(), // Special request options
//   bannerRefreshTime: 60, // Refresh time in seconds
//   listener: (AdEvent event, {int errorCode}) { // Event listener
//     print("Banner Ad event : $event");
//     print("Banner Ad event errorCode: $errorCode");
//   },
  
// );

//  @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     this.bannerAd.loadAd();
//     this.bannerAd.show();
//   }
  Completer<WebViewController> _controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    print(widget.url);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.red,
      ),
      body: WebView(
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}