

import 'package:flutter/material.dart';

// local imports
import '../pages/product_detail.dart';

class ProductGrid extends StatefulWidget {

         @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductGridState();
  }
}

class ProductGridState extends State<ProductGrid>{
  var product_list = [
    {
      'name':'Blazer' ,
      'picture': 'assets/product/brazer.jpg',
      'old_price': 120,
      'price': 85 ,

    },
    {
      'name':'Red Dress' ,
      'picture': 'assets/product/dress2.jpg',
      'old_price': 100,
      'price': 50 ,

    },
    {
      'name':'Blue Dress',
      'picture':'assets/product/dress.jpg',
      'old_price': 200,
      'price': 150,
    },
     {
      'name':'Black Dress',
      'picture':'assets/product/dress1.jpg',
      'old_price':300,
      'price': 200,
    }
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Padding(
           padding: EdgeInsets.all(4.0),
          child: Single_Product(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
           ) );
          },
      
    );

    
  }

}

class Single_Product extends  StatelessWidget{

final prod_name;
final prod_picture;
final prod_old_price;
final prod_price;

Single_Product({
  this.prod_name,
  this.prod_picture,
  this.prod_old_price,
  this.prod_price});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Card(
        child: Hero(
          tag: Text('Hero1'),
          child: Material(
            child: InkWell(
              onTap: ()=> Navigator.of(context).
              push(MaterialPageRoute(
                builder:
                 (context)=>
                 // here passing value to product details
                 ProductDetails(
                   product_detail_name: prod_name,
                   product_detail_new_price: prod_price,
                   product_detail_old_price: prod_old_price,
                   product_detail_picture: prod_picture,
                 ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(prod_name,
                    style:TextStyle(fontWeight: FontWeight.bold),

                  ),
                  title:Text('\$$prod_price',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w800
                  ),),
                  subtitle:Text('\$$prod_old_price',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.lineThrough,
                  ),),
                ),
               ),
               child:Image.asset(prod_picture,
               fit: BoxFit.cover,),
            ),
          ),
          ),
        ),
      )
    );
  }
}