import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_webapi/service/rest_api.dart';
import 'package:flutter_webapi/themes/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String email , password ;

  //loading...
  bool _isLoading = false ;

  //Alert Dialog

  showAlertDialog(BuildContext context , String msg){
  AlertDialog alert = AlertDialog(
    title : Text('logn Stutus'),
    content: Text(msg),
    actions: [
      FlatButton(onPressed: (){

        Navigator.of(context).pop();
      }, child: Text('OK'))
    ],

  );
  showDialog(context: context, 
  builder: (BuildContext context){
    return alert ;
  });
  
  }

  // 

  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  

  Widget _bulidLogo(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
     // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 70),
          child: Text("ItGenius", style: TextStyle(
            fontSize: 24 ,
            fontWeight: FontWeight.bold ,
            color:  Colors.white
          ),),
        ),
        
      ],
    );
  }

  Widget _bulidEmailRow(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        controller: mailController,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value){
          setState(() {
            email = value ;
          });
        },
        decoration: InputDecoration(
          prefix: Icon(
            Icons.email ,
            color: appTheme().primaryColor,
          ),
          labelText: "E-mail"
           ),
      ),
      
    );
  }



  Widget _bulidPasswordRow(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        controller: passwordController,
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        onChanged: (value){
          setState(() {
            password = value ;
          });
        },
        decoration: InputDecoration(
          prefix: Icon(
            Icons.email ,
            color: appTheme().primaryColor,
          ),
          labelText: "Password"
           ),
      ),
      
    );
  }

  Widget _buildFOrgetPasswordButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FlatButton(
          onPressed: (){},
           child: Text("Forgot Password",style: TextStyle(color: appTheme().primaryColor),
           ))
      ],
    );
  }

  Widget _bulidLoginButton(){
    return Row(
      mainAxisAlignment : MainAxisAlignment.center ,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: RaisedButton(
            elevation: 5.0,
            color: appTheme().primaryColor ,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: _login,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0 ,vertical:  10.0),
              child: Text(
                "Login" ,
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5 ,
                  fontSize: 20.0
                ),
                ),
            ),), 
          ),
        
      ],);
  }


  Widget _buildOrRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child : Text(
            "-OR -",
            style: TextStyle(fontWeight: FontWeight.w400),
          )
        )
      ],

    );
  }

  Widget _bulidSocialBtnRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){},
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appTheme().primaryColor,
              boxShadow:[
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0,2),
                  blurRadius: 6.0
                )
              ]
            ),
            child: Icon(
              FontAwesomeIcons.facebookF,
              color: Colors.white,
            )
          ),
        ),
        SizedBox(width: 20,),

      GestureDetector(
          onTap: (){},
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
              boxShadow:[
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0,2),
                  blurRadius: 6.0
                )
              ]
            ),
            child: Icon(
              FontAwesomeIcons.google,
              color: Colors.white,
            )
          ),
        )

      ],);
  }


  //การรวม Widget ด้านบนทั้งหมด 

  Widget _bulidContaner(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20)
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6+200,
            width: MediaQuery.of(context).size.width * 0.8 ,
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text("Login",style: TextStyle(
                        fontSize: 24.0
                      ),),)
                  ],
                ),
                _bulidEmailRow(),
                _bulidPasswordRow(),
                _buildFOrgetPasswordButton(),
                _bulidLoginButton(),
                _buildOrRow(),
                _bulidSocialBtnRow()
              ],
            ),
          ),
        )
      ],
    );

  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child:   SingleChildScrollView(
            child:  _isLoading ? Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 20,),
                    Text('กำลังตวจสอบข้อมูล')
                  ],
                ),
              ),
            )
            
             : Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                    color: appTheme().primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(70),
                      bottomRight: const Radius.circular(70)
                    )
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   _bulidLogo(),
              _bulidContaner(),
                ],
              )
             
            ],
            ),
          ),
        ),        
      ),
    );
  }
  void _login() async {


    //สร้าง SharePrefernces
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();


  //แสดง Loading 
  setState(() {
    _isLoading = true ;
  }); 
  //รับค่ามาเก็บลง list
  var userData = {
     'email' : mailController.text ,
     'password' : passwordController.text 
  };

  //call api

  var response = await CallAPI().postData(userData,"login");
  var body = json.decode(response.body);

  if(body['success']){

     setState(() {
    _isLoading = false ;
  }); 

  //สรา้งตัวแปรเก็บ shaerdPerferences 
    sharedPreferences.setString("storeName",body['data']['name']);
    sharedPreferences.setString("storeEmail",body['data']['email']);

    print('login success');
    Navigator.pushNamed(context, '/dashboard');
  }
  else {

     setState(() {
    _isLoading = false ;
  }); 
    print('login fail');
   showAlertDialog(context ,"Login Fail");
  }

  print(body);
}
}


//ส่วนของการเ{ขียน logic การ login
