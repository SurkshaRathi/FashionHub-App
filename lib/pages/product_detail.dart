import 'package:flutter/material.dart';
import '../main.dart';
import '../components/similarproduct.dart';
import '../pages/homepage.dart';

class ProductDetails extends StatefulWidget {

  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails
  (
    {
      this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture
      }
  );

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductDetailState();
  }
  
}
class ProductDetailState extends State<ProductDetails>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
         elevation: 0.1,
        backgroundColor: Colors.orange,
        title:InkWell(
          onTap: (){
     Navigator.push(context, 
     MaterialPageRoute(
       builder: (context)=>Home()));
          },
      child:Text('FashApp'),),
       
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,
            color:Colors.white),
            onPressed: (){},
          ),
          
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            color: Colors.white,
            child: GridTile(
              //color:Colors.white,
              child: Container(
                child: Image.asset(widget.product_detail_picture,
                ),
                color: Colors.white,
              //  foregroundDecoration: Decoration.Colors.,
            ),
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(widget.product_detail_name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                fontSize: 16.0),),
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text('\$${widget.product_detail_old_price}',
                      style: TextStyle(color: Colors.grey,
                      decoration: TextDecoration.lineThrough,)),
                    ),
                    Expanded(
                      child: Text('\$${widget.product_detail_new_price}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),),
                    )
                  ],
                ),
              ),
            ),
          )
           ),

    // =========== the first Button======================
           Row(
             children: <Widget>[
    // ============= the size button=====================           
               Expanded(
                 child: MaterialButton(
                   onPressed: (){
                     showDialog(context: context,
                     builder: (context){
                       return AlertDialog(
                         title: Text('Size'),
                         content: Text('Choose the Size'),
                         actions: <Widget>[
                           MaterialButton(
                             onPressed: (){
                               Navigator.of(context).pop(context);
                             },
                             child: Text('Close'),
                           )
                         ],
                       );
                     });
                   },
                   color: Colors.white,
                   textColor: Colors.grey,
                   elevation: 0.2,
                   child: Row(
                     children: <Widget>[
                       Expanded(
                         child: Text('Size'),
                       ),
                         Expanded(
                         child: Icon(Icons.arrow_drop_down),
                       )
                     ],
                   ),
                 ),
               ),

//================== the color size button  =======================

                Expanded(
                 child: MaterialButton(
                   onPressed: (){
                     showDialog(context: context,
                     builder: (context){
                       return AlertDialog(
                         title: Text('Color'),
                         content: Text('Choose the Color'),
                         actions: <Widget>[
                           MaterialButton(
                             onPressed: (){
                               Navigator.of(context).pop(context);
                             },
                             child: Text('Close'),
                           )
                         ],
                       );
                     });
                   },
                   color: Colors.white,
                   textColor: Colors.grey,
                   elevation: 0.2,
                   child: Row(
                     children: <Widget>[
                       Expanded(
                         child: Text('Color'),
                       ),
                         Expanded(
                         child: Icon(Icons.arrow_drop_down),
                       )
                     ],
                   ),
                 ),
               ),
    // =========== the quantity button ========================
               Expanded(
                 child: MaterialButton(
                   onPressed: (){
                     showDialog(context: context,
                     builder: (context){
                       return AlertDialog(
                         title: Text('Size'),
                         content: Text('Choose the Size'),
                         actions: <Widget>[
                           MaterialButton(
                             onPressed: (){
                               Navigator.of(context).pop(context);
                             },
                             child: Text('Close'),
                           )
                         ],
                       );
                     });
                   },
                   color: Colors.white,
                   textColor: Colors.grey,
                   elevation: 0.2,
                   child: Row(
                     children: <Widget>[
                       Expanded(
                         child: Text('Qty'),
                       ),
                         Expanded(
                         child: Icon(Icons.arrow_drop_down)),
                       
                     ],
                   ),
                 ),
               ),

             ],
             ) ,

  // ********************* the Second Button ********************  
                Row( children:<Widget>[
                   Expanded(
                 child: MaterialButton(
                   onPressed: (){},
                   color: Colors.red,
                   textColor: Colors.white,
                   elevation: 0.2,
                   child: Text('Buy now'),
                 ),
                  ),
                  IconButton(
                    icon:Icon(Icons.add_shopping_cart),color:Colors.red,onPressed:(){}),
                  
                  IconButton(
                    icon:Icon(Icons.favorite_border),color:Colors.red,onPressed:(){}),
                  
                ]
                ),
              Divider(),
                ListTile(
                  title:Text('Product Details'),
                  subtitle: Text('This REST API makes calls in both XML and JSON. It allows you to access information on the list of categories in the Flipkart product feed. It also contains the Product Feed URL for each category. This does not include Books and eBooks. Flipkart is an ecommerce marketplace with over 40 million products.'),
                ),
                Divider(),
                Row(
                  children:<Widget>[
                    Padding(padding:
                    EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                    child:Text('Product Name',
                    style:TextStyle(color: Colors.grey))
                ),
                Padding(padding: EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),)
                ]),
                  Row(
                  children:<Widget>[
                    Padding(padding:
                    EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                    child:Text('Product Brand',
                    style:TextStyle(color: Colors.grey))
                  ),
      // Remember to create Product Brand            
                   Padding(padding: EdgeInsets.all(5.0),
                child: Text('Puma'),)
                  ]),
      // add Product Condition            
                  Row(
                  children:<Widget>[
                    Padding(padding:
                    EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                    child:Text('Product Condition',
                    style:TextStyle(color: Colors.grey))
                  ),
                   Padding(padding: EdgeInsets.all(5.0),
                child: Text('New'),)
                  ]
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.all(8.0),
                child:  Text('Similar Product')),
                  //Similar Poduct Section
                  Container(
                    height: 360.0,
                    child: SimilarProduct(),
                  )
                  ],
      ),
    );
  
  }

}

