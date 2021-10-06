import 'package:flutter/material.dart';
import 'package:flutter_webapi/models/Product.dart';
import 'package:flutter_webapi/service/rest_api.dart';

class StockScreen extends StatefulWidget {
  StockScreen({Key key}) : super(key: key);

  @override
  _StockScreenState createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {

  //Call API Sevice 
  CallAPI callAPI ;

  //สรา้ง context
  BuildContext context ;

  @override
  void initState() {
  
    super.initState();
    callAPI = CallAPI();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Product List"),
        actions: [
          InkWell(
              onTap: () {
                print('tap on add buton');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 16),
                child: Icon(Icons.add),
              ))
        ],
      ),
      body: Center(
        child: FutureBuilder(
          future: callAPI.getProducts(),
          // ignore: missing_return
          builder: (BuildContext  context, AsyncSnapshot<List<Product>> snapshot){
            if(snapshot.hasError){
              return Center(
                child: Text('Something wrong with ${snapshot.error.toString()}'),
              );
            }
            else if(snapshot.connectionState == ConnectionState.done){
              List<Product> products = snapshot.data ;
              return _bulidListview(products);

            }
            else {
               return Center(
                 child: CircularProgressIndicator(),
               );
            }
          }
          
          ),
      ),
    );
  }

  //listview bulid 
  Widget _bulidListview(List<Product> products){
    return ListView.builder(      
          itemCount: products.length,
          itemBuilder: (context, index) {
            //loadmodel data
            Product product = products[index] ;
            return Card(
              child: InkWell(
                onTap: (){
                  print('tab on card $index');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: MediaQuery.of(context).size.width * 0.3,
                              child: Image.network(
                                product.productImage,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
              
                            children: [
                              Text(product.productName,
                              style: TextStyle(fontSize: 24),
                              overflow: TextOverflow.ellipsis,),
                              Text(product.productDetail,style: TextStyle(fontSize: 18)),
                              Text("THB"+product.productPrice,style: TextStyle(fontSize: 16)),
                            ],
                          ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end ,
                        children: [
                          RaisedButton(
                            color: Colors.blue,
                            onPressed: (){
                              print('Tab on edit button');
                            },
                             child: Text('Edit',style: TextStyle(color: Colors.white))),
                             SizedBox(
                               width: 20,
                             ),
                             RaisedButton(
                                color: Colors.redAccent,
                            onPressed: (){
                              print('Tab on Delete button');
                            },
                             child: Text('Delete',style: TextStyle(color: Colors.white)))
                        ],
                      )
                    ],
                  ),
                
                ),
              ),
            );
          });
  }
   
}
