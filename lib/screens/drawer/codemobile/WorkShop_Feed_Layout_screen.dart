import 'package:flutter/material.dart';

class WorkShopFeedLayout extends StatefulWidget {
  WorkShopFeedLayout({Key key}) : super(key: key);

  @override
  _WorkShopFeedLayoutState createState() => _WorkShopFeedLayoutState();
}

class _WorkShopFeedLayoutState extends State<WorkShopFeedLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("workShopLogin"),
      ),
      body: Center(
        child: Text("WorkShopFeed"),
      ),
    );
  }
}
