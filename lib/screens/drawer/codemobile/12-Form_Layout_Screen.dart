import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:validators/validators.dart';
import 'package:url_launcher/url_launcher.dart';

class User {
  User() {
    this.email = "";
    this.password = "";
    this.gender = "";
    this.agreePolicy = false;
    this.receiveEmail = false;
  }

  String email;
  String password;
  String gender;
  bool agreePolicy;
  bool receiveEmail;
}

class FormLayoutScreen extends StatefulWidget {
  FormLayoutScreen({Key key}) : super(key: key);

  @override
  _FormLayoutScreenState createState() => _FormLayoutScreenState();
}

class _FormLayoutScreenState extends State<FormLayoutScreen> {
  final _formKey = GlobalKey<FormState>();
  String toLaunch = 'https://www.cylog.org/headers/';

  User user = new User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FormLayoutScreen"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  TextFormField(
                    decoration: _bulidTnputDecoration(
                        label: 'email',
                        hint: 'text@gmail.com',
                        icon: Icon(Icons.email)),
                    keyboardType: TextInputType.emailAddress,
                    validator: _ValidateEmail,
                    onSaved: (String value) {
                      user.email = value;
                    },
                  ),
                  TextFormField(
                    decoration: _bulidTnputDecoration(
                        label: 'password', icon: Icon(Icons.lock)),
                    keyboardType: TextInputType.emailAddress,
                    validator: _ValidatePassword,
                    onSaved: (String value) {
                      user.password = value;
                    },
                    obscureText: true,
                  ),
                  _bulidGenderForm(),
                  _bulidReceiveEmailForm(),
                  _bulidAgreePolicyForm(),
                  _bulidSummitButton(),
                ],
              )),
        ));
  }

  Widget _bulidSummitButton() {
    return Container(
      //width: MediaQuery.of().size.width,
      margin: EdgeInsets.only(top: 12),
      child: RaisedButton(
        color: Colors.blue,
        onPressed: _submit,
        child: Text(
          "Submits",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  void _submit() {
    //check ฟิวส์แต่ละฟิวส์มีการ retuen string หรือป่าว
    if (this._formKey.currentState.validate()) {
      if (user.agreePolicy == false) {
        showAlertDilog();
      } else {
        {
          _formKey.currentState.save();

          print("Email : ${user.email}");
          print("Password : ${user.password}");
          print("gender : ${user.gender}");
          print("receiveemail : ${user.receiveEmail}");
          print("Agree Policy : ${user.agreePolicy}");
        }
      }
    }
  }

  Future<dynamic> showAlertDilog() {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          title: Text("Title"),
          content: SingleChildScrollView(
              child: ListBody(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.cake,
                    color: Colors.blue,
                  )),
              Text("Detail"),
              Text("Detail2"),
              Text("Detail2"),
              Text("Detail"),
              Icon(Icons.directions_walk),
            ],
          )),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Close"))
          ],
        );
      },
    );
  }

  String _ValidateEmail(String value) {
    if (value.isEmpty) {
      return "the Email is Empty";
    }
    if (!isEmail(value)) {
      return "The email must ne a valid email";
    }

    // return "sss";
  }

  String _ValidatePassword(String value) {
    if (value.length < 8) {
      return " The password must be not least 8 charactores";
    }
  }

  Widget _bulidGenderForm() {
    final Color activeColor = Colors.orange;

    return Container(
      margin: EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Genger",
            style: TextStyle(fontSize: 16),
          ),
          Radio(
              activeColor: activeColor,
              value: "male",
              groupValue: user.gender,
              onChanged: _handelRadioValueChange),
          Text("mail"),
          Radio(
              activeColor: activeColor,
              value: "Fermale",
              groupValue: user.gender,
              onChanged: _handelRadioValueChange),
          Text("Fermail")
        ],
      ),
    );
  }

  void _handelRadioValueChange(String value) {
    print('value : $value');

    setState(() {
      user.gender = value;
    });
  }

  Widget _bulidReceiveEmailForm() {
    return Row(
      children: [
        Text(
          "Receive Email",
          style: TextStyle(fontSize: 16),
        ),
        Switch(
            activeColor: Colors.orange,
            value: user.receiveEmail,
            onChanged: (select) {
              setState(() {
                user.receiveEmail = select;
              });
            })
      ],
    );
  }

  Widget _bulidAgreePolicyForm() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 32),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
              activeColor: Colors.orange,
              value: user.agreePolicy,
              onChanged: (value) {
                setState(() {
                  user.agreePolicy = value;
                });
              }),
          Text("I agree the "),
          GestureDetector(
              onTap: () {
                setState(() {
                  _launchUrl(toLaunch);
                });
              },
              child: Text(
                'Privacy Policy',
                style: TextStyle(
                    color: Colors.blue, decoration: TextDecoration.underline),
              ))
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}

// _launchUrl() async {
//   const String toLaunch = 'https://www.cylog.org/headers/';
//   if (await canLaunch(toLaunch)) {
//     await launch(toLaunch);
//   } else {
//     throw 'Could not luanch';
//   }
// }

InputDecoration _bulidTnputDecoration({String label, String hint, Icon icon}) {
  return InputDecoration(labelText: label, hintText: hint, icon: icon);
}
