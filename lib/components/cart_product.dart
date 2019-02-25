import 'package:flutter/material.dart';

class Cartproduct extends StatefulWidget{


 State<StatefulWidget> createState() {
    // TODO: implement createState
    return Cartproductstate();
  }
}

class Cartproductstate extends State<Cartproduct>{
  var product_on_the_cart =[
     {
      'name':'Blazer' ,
      'picture': 'assets/product/brazer.jpg',
      'price': 85 ,
      'size':'M',
      'color':'Brown',
      'quantity':1


    },
     {
      'name':'Blue Dress',
      'picture':'assets/product/dress.jpg',
      'size':'S',
      'color':'Blue',
      'price': 150,
      'quantity':1
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: product_on_the_cart.length,
      itemBuilder:(context, index){
        return Singlecartproduct(
          cart_prod_name: product_on_the_cart[index]['name'],
          cart_prod_price: product_on_the_cart[index]['price'],
          cart_prod_color: product_on_the_cart[index]['color'],
          cart_prod_size: product_on_the_cart[index]['size'],
          cart_prod_picture: product_on_the_cart[index]['picture'],
          cart_prod_qty: product_on_the_cart[index]['quantity'],
        );
      }
    ) ;
  }

}

class Singlecartproduct extends StatelessWidget{
final cart_prod_name;
final cart_prod_picture;
final cart_prod_size;
final cart_prod_color;
final cart_prod_qty;
final cart_prod_price;

Singlecartproduct({
  this.cart_prod_name,
  this.cart_prod_picture,
  this.cart_prod_color,
  this.cart_prod_size,
  this.cart_prod_qty,
  this.cart_prod_price});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
  //============= Leading Section Here======================      
        leading: Image.asset(cart_prod_picture,
        width:80,height:80.0),
  //================Title Section Here========================      
        title: Text(cart_prod_name),
  //================Subtitle Section Here=====================      
        subtitle: Column(
          children: <Widget>[
            // Row inside Column
            Row(
              children: <Widget>[

                // this section is for the size of the product

               Padding(
                 padding: EdgeInsets.all(0.0),
                 child: Text('Size'),
                 ),
                 Padding(
                   padding: EdgeInsets.all(4.0),
                   child: Text(cart_prod_size,style: TextStyle(color: Colors.red)),
                   ),
//============= the section is for color of the product===================
                    Padding(
                 padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                 child: Text('Color',),
                 ),
                 Padding(
                   padding: EdgeInsets.all(4.0),
                   child: Text(cart_prod_color,style: TextStyle(color: Colors.red)),
                   ),
              ],
              ),
  // =======================This Section is For The Product Price=============
            Container(
              alignment:Alignment.topLeft,
              child: Text('\$${cart_prod_price}',
              style: TextStyle(fontSize: 17.0,
              fontWeight: FontWeight.bold,
              color: Colors.red),),
            )           
          ],
        ),
        trailing: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_drop_up),
              onPressed: (){},
            ),
            Text('$cart_prod_qty'),
             IconButton(
              icon: Icon(Icons.arrow_drop_down),
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }

  
}