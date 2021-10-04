import 'package:flutter/widgets.dart';
import 'package:flutter_webapi/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_webapi/screens/drawer/about/about_screen.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/02-rowandcolum_screen.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/06-ListView_builder_screen.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/07-GridView_screen.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/08-Stack_Layout_Screen.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/09-Expanded_Screen.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/10-SizeBox_Layout_Screen.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/11-IntrinsicWidth_IntrinsicHeightLayout_Screen.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/12-AppBar_Layout_Screen.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/12-Form_Layout_Screen.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/13-TabBar_Layout_Screen.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/14-Navigator_Layout_Screen.dart';
import 'package:flutter_webapi/screens/drawer/codemobile/WorkShop_layout.dart';

import 'package:flutter_webapi/screens/drawer/codemobile/menuListCodemobile.dart';
import 'package:flutter_webapi/screens/drawer/contact/contact_screen.dart';
import 'package:flutter_webapi/screens/drawer/term/term_screen.dart';
import 'package:flutter_webapi/screens/login/login_screen.dart';
import 'package:flutter_webapi/screens/register/register_screen.dart';
import 'package:flutter_webapi/screens/start/start_screen.dart';
import 'package:flutter_webapi/screens/welcome/welcome_screen.dart';

import 'screens/drawer/codemobile/01-container_screen.dart';
import 'screens/drawer/codemobile/05-ListView_Horizontal_screen.dart';
import 'screens/drawer/codemobile/main_codemobile.dart';

import 'screens/media_query/media_query.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
//  "/": (BuildContext context) => MediaQueryScreen(),
  // "/": (BuildContext context) => MediaLayoutScreen(),
  "/": (BuildContext context) => WelcomeScreen(),
  "/start": (BuildContext context) => StartScreen(),
  "/mainCodemobile": (BuildContext context) => MainCodemobile(),
  "/login": (BuildContext context) => LoginScreen(),
  "/register": (BuildContext context) => RegisterScreen(),
  "/dashboard": (BuildContext context) => DashboardScreen(),
  "/about": (BuildContext context) => AboutScreen(),

  //ของ code mobile
  "/containerCodeMobileScreen": (BuildContext context) =>
      ContainerCodeMobileScreen(),
  "/RowAndColumScreen": (BuildContext context) => RowAndColumScreen(),
  "/MenuListCodeMobileScrren": (BuildContext context) => MemuListScreen(),
  "/ListViewHorizontalScreen": (BuildContext context) =>
      ListViewHorizontalScreen(),
  "/ListviewBuilderScreen": (BuildContext context) => ListviewBuilderScreen(),
  "/GridViewScreen": (BuildContext context) => GridViewScreen(),
  "/StackLayoutScreen": (BuildContext context) => StackLayoutScreen(),
  "/ExpandedlayoutScreen": (BuildContext context) => ExpandedlayoutScreen(),
  "/SizeBoxlayoutScreen": (BuildContext context) => SizeBoxlayoutScreen(),
  "/IntrinsicWidth_IntrinsicHeightlayoutScreen": (BuildContext context) =>
      IntrinsicWidth_IntrinsicHeightlayoutScreen(),
  "/WorkShoplayoutScreen": (BuildContext context) => WorkShoplayoutScreen(),
  "/FormLayoutScreen": (BuildContext context) => FormLayoutScreen(),
  "/AppBarLayoutScreen": (BuildContext context) => AppBarLayoutScreen(),
  "/TabbarLayoutScreen": (BuildContext context) => TabbarLayoutScreen(),
  "/NabbarLayoutScreen": (BuildContext context) => NavbarLayoutScreen(),

  "/term": (BuildContext context) => TermScreen(),
  "/contact": (BuildContext context) => ContactScreen(),
  "/MediaQueryScreen": (BuildContext context) => MediaQueryScreen(),
};
