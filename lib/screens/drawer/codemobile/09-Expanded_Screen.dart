import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpandedlayoutScreen extends StatefulWidget {
  ExpandedlayoutScreen({Key key}) : super(key: key);

  @override
  _ExpandedScreenState createState() => _ExpandedScreenState();
}

class _ExpandedScreenState extends State<ExpandedlayoutScreen> {
  final List<String> items =
      List<String>.generate(20, (index) => "Item: ${++index}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ExpandedlayoutScreen"),
        ),
        body: Row(
          children: [
            Expanded(
                flex: 2,
                child: Text(
                  "Iphone S",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                )),
            Expanded(
              child: Container(
                child: RaisedButton(child: Text("View More"), onPressed: () {}),
              ),
            )
          ],
        ));
  }
}
