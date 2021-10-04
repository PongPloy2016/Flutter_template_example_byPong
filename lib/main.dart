import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webapi/routes.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/Login_codemobile_screen.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/WorkShop_Feed_Layout_screen.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/main_codemobile.dart';
import 'package:flutter_webapi/screens/login/login_screen.dart';
import 'package:flutter_webapi/service/AuthService.dart';
import 'package:flutter_webapi/themes/style.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> save_loggedIn() async {
  final prefs = await SharedPreferences.getInstance();

  prefs.setBool("loggedIn", true);
}

Future<bool> read_loggedIn() async {
  final prefs = await SharedPreferences.getInstance();
  var value = prefs.getBool("loggedIn");

  return value;
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AuthService authService = AuthService();

  Widget _page = LoginCodebilePage();

  final _route = <String, WidgetBuilder>{
    '/login': (context) => LoginCodebilePage(),
    '/home': (context) => WorkShopFeedLayout(),
  };

  final bool login = await authService.isLogin();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JSON Feed Workshop',
      home: (login ?? false) ? WorkShopFeedLayout() : LoginCodebilePage(),
      routes: _route,
    ),
  );
} 



// void main() => runApp(
//     // DevicePreview(builder: (context) => MyApp())
//     MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       locale: DevicePreview.locale(context), // Add the locale here
//       builder: DevicePreview.appBuilder,
//       title: 'Flutter Project',
//       theme: appTheme(),
//       initialRoute: '/',
//       routes: routes,
//     );
//   }
// }
