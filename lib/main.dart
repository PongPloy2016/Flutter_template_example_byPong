

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webapi/routes.dart';
import 'package:flutter_webapi/themes/style.dart';

void main() => runApp(
 // DevicePreview(builder: (context) => MyApp())
  MyApp()
  );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
       locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder,
      title: 'Flutter Project',
      theme: appTheme(),
      initialRoute: '/dashboard',
      routes: routes,
    );
  }
}
