import 'package:flutter/material.dart';
import '../components/cart_product.dart';

class  ShoppingCart extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ShoppingCartState();
  }
  
}
class ShoppingCartState extends State<ShoppingCart> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Shopping Cart'),
        actions: <Widget>[
          IconButton(icon: 
          Icon(Icons.search,color:Colors.white),
          onPressed:(){
           
          },),
                 

        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: 
            ListTile(
              title: Text('Total Amount'),
              subtitle: Text('\$230'),
            ),),
            Expanded(
              child:MaterialButton(
                onPressed: (){},
                child: Text('Check Out',
                style:TextStyle(color: Colors.white) ,),
                color: Colors.red,
              ) ,)
          ],
        ),
      ),
      body: Cartproduct() ,
    );}
  
}