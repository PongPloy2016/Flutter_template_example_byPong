import 'dart:convert';
import 'package:flutter_webapi/models/Product.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_webapi/utils/constants.dart';

class CallAPI {
  _setHeader() =>
      {'Content-type': "application/json", 'Accept': 'application/json'};

  //login
  postData(data, apiURL) async {
    var fullURL = baseURLAPI + apiURL;
    var url = Uri.parse(fullURL);

    //var url = Uri.https(baseURLAPI, apiURL, {'q': '{http}'});

    return await http.post(url, body: jsonEncode(data), headers: _setHeader());
  }

  //ส่วนของการ CRUD Product
  //Get ALL Product

  Future<List<Product>> getProducts() async {
    var fullURL = baseURLAPI + "products";
    var url = Uri.parse(fullURL);

    final response = await http.get(url, headers: _setHeader());
    if (response.statusCode == 200) {
      return productFromJson(response.body);
    } else {
      List<Product> product = List<Product>();
      return product;
    }
  }

  //Create Product

  Future<bool> createProduct(Product product) async {
    var fullURL = baseURLAPI + "products";
    var url = Uri.parse(fullURL);

    final response = await http.post(url,
        headers: _setHeader(), body: productToJson(product));

    if (response.statusCode == 200) {
      return true;
    } else {
      return null;
    }
  }

  // Update Products
  Future<bool> updateProduct(Product data) async {
    var fullURL = baseURLAPI + "products/${data.id}";
    var url = Uri.parse(fullURL);

    final response = await http.put(
      url,
      headers: _setHeader(),
      body: productToJson(data),
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  // Delete Products
  Future<bool> deleteProduct(int id) async {
    var fullURL = baseURLAPI + "products/${id}";
    var url = Uri.parse(fullURL);

    final response = await http.delete(url, headers: _setHeader());
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
