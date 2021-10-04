import 'package:flutter/material.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/WorkShop_Feed_Layout_screen.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/Login_codemobile_screen.dart';
import 'package:flutter_webapi/screens/login/login_screen.dart';
import 'package:flutter_webapi/service/AuthService.dart';

class MainCodemobile extends StatelessWidget {
  Widget page = LoginCodebilePage();

  final _rote = <String, WidgetBuilder>{
    'login': (context) => LoginCodebilePage(),
    '/home': (context) => WorkShopFeedLayout()
  };

  MainCodemobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CM Feed Json",
      home: page,
      routes: _rote,
    );
  }
}

// Future<void> main() async {
//   AuthService authService = AuthService();

//   if (await authService.isLogin()) {
//     LoginCodebilePage();
//   }
//   runApp(
//     MainCodemobile(),
//   );
// }
