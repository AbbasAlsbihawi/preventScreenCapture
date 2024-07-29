import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  InAppWebViewSettings settings = InAppWebViewSettings(
      // isInspectable: true,
      // mediaPlaybackRequiresUserGesture: false,
      // allowsInlineMediaPlayback: true,
      // iframeAllow: "camera; microphone",
      // iframeAllowFullscreen: true,

      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: InAppWebView(
            initialUrlRequest: URLRequest(url: WebUri("https://dashboard.aknan.app/")))
        //  InAppWebView(initialUrlRequest:
        //   URLRequest(url: WebUri("http://occo.pro:7021/")),
        //     initialSettings: settings,
        //   ),

        );
  }
}
