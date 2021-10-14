import 'package:flutter/material.dart';
import 'package:flutter_webapi/screens/mockup/email_data.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ListItemWidget extends Dismissible {
  ListItemWidget(EmailData data)
      : super(

          key: Key(data.email),
          background: Container(
            alignment: AlignmentDirectional.centerEnd,
            color: Colors.red,
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
          onDismissed: (direction) {
            // setState(() {
            //   items.removeAt(index);
            // });
          },
          direction: DismissDirection.endToStart,
          child: Card(
              elevation: 5,
              child: Container(
              height: 100.0,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5)
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://is2-ssl.mzstatic.com/image/thumb/Video2/v4/e1/69/8b/e1698bc0-c23d-2424-40b7-527864c94a8e/pr_source.lsr/268x0w.png")
                      )
                    ),
                  ),
                  Container(
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            data.name
                            
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                               child: Container(
                              width: 30,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.teal),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Text("3D",textAlign: TextAlign.center,),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                              child: Container(
                              width: 260,
                              child: Text("His genius finally recognized by his idol Chester",style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 48, 48, 54)
                              ),),
                              
                              
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      
           
}