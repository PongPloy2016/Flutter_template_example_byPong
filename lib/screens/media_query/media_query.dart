import 'package:flutter/material.dart';
import 'package:flutter_webapi/themes/style.dart';


class MediaQueryScreen extends StatefulWidget {
  MediaQueryScreen({Key key}) : super(key: key);

  @override
  _MediaQueryScreenState createState() => _MediaQueryScreenState();
}

class _MediaQueryScreenState extends State<MediaQueryScreen> {
  @override
  Widget build(BuildContext context) {

    //ตัวอย่างการอ่านขนาด กว้าง * สูง
  Size screenSize =  MediaQuery.of(context).size ;
  double screenWidth = MediaQuery.of(context).size.width;
  double screenhigth = MediaQuery.of(context).size.height;
  double appbarHigth = 56.0 ;

    return Scaffold(

      //Status defalut = 24 
      //Defalut Appbar hight = 56

      appBar: PreferredSize(
        preferredSize: Size.fromHeight((appbarHigth)),
        child: AppBar(
          title: Text('Media query'),
        ),
      ),
      body: Column(
     //  mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          Container(
            color: Colors.green,
            width: MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Center(child: Text('$screenSize',style: TextStyle(fontSize: 24)))),
          Container(
            color: Colors.orange,
            width: MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Center(child: Text(' screenWidth :${screenWidth.toStringAsFixed(2)}',style: TextStyle(fontSize: 24)))),
          Container(
             color: Colors.purple,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4 -56 -24  ,
            child: Center(child: Text(' screenhigth : ${screenhigth.toStringAsFixed(2)}',style: TextStyle(fontSize: 24)))),
        ],
       
      ),
    );
  }
}