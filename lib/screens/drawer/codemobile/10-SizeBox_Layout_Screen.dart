import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SizeBoxlayoutScreen extends StatefulWidget {
  SizeBoxlayoutScreen({Key key}) : super(key: key);

  @override
  _SizeBoxScreenState createState() => _SizeBoxScreenState();
}

class _SizeBoxScreenState extends State<SizeBoxlayoutScreen> {
  var isShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SizeBox"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Text",
              style: TextStyle(fontSize: 16),
            ),
            Container(
                child: isShow
                    ? SizedBox(
                        height: 20,
                      )
                    : Text("Sun title")),
            Text("DAta 12/222/33")
          ],
        ));
  }
}
