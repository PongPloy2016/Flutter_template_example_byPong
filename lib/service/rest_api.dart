import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_webapi/utils/constants.dart';


class CallAPI {

  _setHeader()=> {
    'Content-type' : "application/json",
    'Accept' : 'application/json'
  };

  postData(data , apiURL) async {

   var fullURL = baseURLAPI + apiURL ;
   var url = Uri.parse(fullURL);

     //var url = Uri.https(baseURLAPI, apiURL, {'q': '{http}'});

   return await http.post(
     url,
     body: jsonEncode(data) ,
     headers: _setHeader()
     );
  
  }

}

