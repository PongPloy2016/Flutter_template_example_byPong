import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntrinsicWidth_IntrinsicHeightlayoutScreen extends StatefulWidget {
  IntrinsicWidth_IntrinsicHeightlayoutScreen({ Key key}) : super(key: key);

  @override
  _IntrinsicWidth_IntrinsicHeightlayoutScreenState createState() =>
      _IntrinsicWidth_IntrinsicHeightlayoutScreenState();
}

class _IntrinsicWidth_IntrinsicHeightlayoutScreenState
    extends State<IntrinsicWidth_IntrinsicHeightlayoutScreen> {
  var isShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("IntrinsicWidth && IntrinsicHeight"),
        ),
        body: Center(
          child: IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildButton("short"),
                _buildButton("A bit longet"),
                _buildButton("The Longest text button"),
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildContainer("short"),
                      _buildContainer("A bit longet"),
                      _buildContainer("The Longest text button")
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

Widget _buildButton(String text) {
  return RaisedButton(child: Text(text), onPressed: () {});
}

Widget _buildContainer(String text) {
  return Container(
    child: Text(text),
    color: Colors.blue,
    width: 30,
  );
}
