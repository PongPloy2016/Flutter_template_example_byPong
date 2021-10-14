import 'package:flutter/material.dart';
import 'package:flutter_webapi/screens/bottomnav/notification/EmailListTile.dart';
import 'package:flutter_webapi/screens/mockup/email_data.dart';

import 'ListItemWidget.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key key}) : super(key: key);

  @override
  NotificationScreenState createState() => NotificationScreenState();
}

class NotificationScreenState extends State<NotificationScreen> {
  //EmailData data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return ListView.builder(
        itemCount: allEmail.length,
        itemBuilder: (BuildContext context, int index) {
       final   data = allEmail[index];
          print("checkFlag  ${data.checkFlag}");

          if (data.checkFlag == "A") {
            return Card(
              elevation: 8.0,
              child: Container(
                child: ListItemWidget(data),
              ),
            );
          } else  {
            return Card(
              elevation: 8.0,
              child: Container(
                child: EmailListTile(data),
              ),
            );
          }
          //  ? EmailListTile : ListItemWidget
          ;
        });
  }
}
