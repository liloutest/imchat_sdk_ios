import 'package:flutter/material.dart';
import 'package:imchat_sdk_ios/imchat_sdk_ios.dart';
import 'package:imchat_sdk_platform_interface/messages.g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  final _imchatSdkIosPlugin = ImchatSdkIOS();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [
              GestureDetector(
                child: Text('Open iOS IM SDK'),
                onTap: () {
                  IMInitSDKParam p = IMInitSDKParam(
                      identityID: "42nz10y3hhah",
                      sign:
                          "b184b8e64c5b0004c58b5a3c9af6f3868d63018737e68e2a1ccc61580afbc8f112119431511175252d169f0c64d9995e5de2339fdae5cbddda93b65ce305217700",
                      nickName: "bbq",
                      nickId: "bbqnickId",
                      device: "iPhone XXXXX",
                      headIcon: "https://img1.baidu.com/it/u=1653751609,236581088&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1729270800&t=36600cf9ed9f2ffddb3a3bb1ec5bd144",
                      phone: "15588888888",
                      email: "bbq@bbq.com",
                      langType: 0,
                      source: "iOS",
                      extraInfo: {"xxx": "xxx", "yyy": "yyy"});
                  _imchatSdkIosPlugin.initSDK(p);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
