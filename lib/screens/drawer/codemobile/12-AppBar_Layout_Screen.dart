import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarLayoutScreen extends StatefulWidget {
  AppBarLayoutScreen({Key key}) : super(key: key);

  @override
  _AppBarLayoutScreenState createState() => _AppBarLayoutScreenState();
}

class _AppBarLayoutScreenState extends State<AppBarLayoutScreen> {
  var isShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AppBarLayoutScreenState"),
        ),
        body: Column());
  }
}
