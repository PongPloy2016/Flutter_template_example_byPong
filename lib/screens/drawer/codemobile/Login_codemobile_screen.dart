import 'package:flutter/material.dart';
import 'package:flutter_webapi/model/UserCM.dart';

import 'package:flutter_webapi/screens/drawer/codemobile/12-Form_Layout_Screen.dart';
import 'package:flutter_webapi/service/AuthService.dart';
import 'package:validators/validators.dart';

class LoginCodebilePage extends StatefulWidget {
  LoginCodebilePage({Key key}) : super(key: key);

  @override
  _loginCodebilePageState createState() => _loginCodebilePageState();
}

class _loginCodebilePageState extends State<LoginCodebilePage> {
  final _formkey = GlobalKey<FormState>();

  UserCM user = UserCM();
  AuthService authService = AuthService();
  FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
          ),
          ListView(
            children: [_bulidForm()],
          )
        ],
      ),
    );
  }

  Widget _bulidForm() => Card(
        margin: EdgeInsets.only(top: 80, left: 30, right: 30),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                _logo(),
                SizedBox(
                  height: 22,
                ),
                _bulidUsernameInput(),
                SizedBox(
                  height: 8,
                ),
                _bulidPasswordInput(),
                SizedBox(
                  height: 28,
                ),
                _bulidSubmitButtion(),
                _bulidForgotButtion(),
              ],
            ),
          ),
        ),
      );

  Widget _logo() => Image.asset(
        ("assets/header_main.png"),
        fit: BoxFit.cover,
      );

  Widget _bulidUsernameInput() => TextFormField(
        decoration:
            InputDecoration(labelText: 'Email', icon: Icon(Icons.email)),
        keyboardType: TextInputType.emailAddress,
        validator: _validateEmail,
        onSaved: (String value) {
          user.Username = value;
        },
        onFieldSubmitted: (String value) {
          FocusScope.of(context).requestFocus(passwordFocusNode);
        },
      );

  Widget _bulidPasswordInput() => TextFormField(
        focusNode: passwordFocusNode,
        decoration:
            InputDecoration(labelText: 'pasword', icon: Icon(Icons.lock)),
        obscureText: true,
        onSaved: (String value) {
          user.Password = value;
        },
        validator: _validatePassword,
      );

  Widget _bulidSubmitButtion() => Container(
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          color: Colors.blue,
          onPressed: () {
            _submit();
          },
          child: Text("login".toLowerCase(),
              style: TextStyle(color: Colors.white)),
        ),
      );

  Widget _bulidForgotButtion() => Container(
        width: MediaQuery.of(context).size.width,
        child: FlatButton(
          splashColor: Colors.blue.shade500,
          onPressed: () {
            _submit();
          },
          child:
              Text("Forgot password", style: TextStyle(color: Colors.black54)),
        ),
      );

  void _submit() {
    if (this._formkey.currentState.validate()) {
      _formkey.currentState.save();
      authService.login(user: user).then((result) => {
            if (result)
              {
                //to dp
                Navigator.pushReplacementNamed(context, "/home")
              }
            else
              {
                //  print("error")
                _showAlertDialog()
              }
          });
    }
  }

  String _validateEmail(String value) {
    if (value.isEmpty) {
      return "the email is Empty";
    } else if (!isEmail(value)) {
      return "The Email must be a valid email";
    }

    return null;
  }

  String _validatePassword(String password) {
    if (password.length < 8) {
      return "The password must at least 8 chrators ";
    }
    return null;
  }

  void _showAlertDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("Username or Password is incorect"),
            content: Text("Plase Try again"),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("OK"))
            ],
          );
        });
  }
}
