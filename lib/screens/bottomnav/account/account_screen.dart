import 'package:flutter/material.dart';
import 'package:flutter_webapi/screens/mockup/email_data.dart';


class AccountScreen extends StatefulWidget {
  AccountScreen({Key key}) : super(key: key);

  @override
  AccountScreenState createState() => AccountScreenState();
}

class AccountScreenState extends State<AccountScreen> {

TextEditingController controllerOne = TextEditingController();
//List<DynamicWidget> listDynamic = List();
//dev<EmailWidget> listEmailWidget = List();

 final List<TextEditingController> _controllers = List();

addDynamic(){

  
 // listDynamic.add(DynamicWidget());

  setState(() {
    
  });
}
submitData(){
 _controllers.forEach((element) {
   // print(controllerOne.text);
    print(element.text);
   
  });

  //   listEmailWidget.forEach((element) {
  //   print(element.controllerTwo.text);
   
  // });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                
                itemCount: allEmail.length,
                itemBuilder: (_,index)
              {
             var data  =  allEmail[index] ;
           
         if (data.checkFlag == "A") {
            return Card(
              elevation: 8.0,
              child: Container(
                child: DynamicWidget(index),
              ),
            );
         }
           else  {
            return Card(
              elevation: 8.0,
              child: Container(
                child: EmailWidget(index),
              ),
            );
          }
         
          
               } 
               
                )),

                 Container(
                  child: RaisedButton(onPressed: (){
                    submitData();
                  },child: Text("Summit data"),)
                  ,
                )
               
          ],
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          addDynamic();
        },
        child: Icon(Icons.add),
      )
      
      );
      
  }

  Widget DynamicWidget(int index)   {
 

 // const DynamicWidget({Key key}) : super(key: key);
// TextEditingController controllerOne = TextEditingController();
  return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          onChanged: (val) => print(val.toString()),
          controller:  _controllers[index],
          decoration: InputDecoration(hintText: "Enter data")),
      )
      );
}

Widget EmailWidget (int index) {
 
 

 // const DynamicWidget({Key key}) : super(key: key);
 //TextEditingController controllerTwo = TextEditingController();

 // EmailWidget(int index);

    return  Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "title",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            onChanged: (val) => print(val.toString()),
             controller:  _controllers[index],
             // obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );

  
}


}




