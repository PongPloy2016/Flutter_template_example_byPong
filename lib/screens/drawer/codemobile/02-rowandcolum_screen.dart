import 'package:flutter/material.dart';

class RowAndColumScreen extends StatefulWidget {
  RowAndColumScreen({Key key}) : super(key: key);

  @override
  _RowAndColumScreenState createState() => _RowAndColumScreenState();
}

class _RowAndColumScreenState extends State<RowAndColumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Row Cm Layout"),
        ),
        body: Row(
          children: [
            FlutterLogo(
              size: 50,
            ),
            Container(
              margin: EdgeInsets.only(left: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Ponglang",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Petrung")
                ],
              ),
            )
          ],
        )

        // Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   mainAxisSize: MainAxisSize.max,
        //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   // crossAxisAlignment: CrossAxisAlignment.baseline,
        //   // textBaseline: TextBaseline.alphabetic,
        //   // //textDirection: TextDecoration.rtl,
        //   children: [
        //     FlutterLogo(),
        //     Text(
        //       "Codemobie",
        //       style: TextStyle(fontSize: 30),
        //     ),
        //     Text("CMDEV", style: TextStyle(fontSize: 30))
        //   ],
        // )

        );
  }
}
