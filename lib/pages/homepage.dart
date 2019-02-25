
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../components/gridListView.dart';
import '../components/horizontal_listview.dart';
import './cart.dart';
class Home extends StatefulWidget {
@override
  State<StatefulWidget> createState() => _HomeState();
   }

   class  _HomeState extends State<Home> {
     @override
  Widget build(BuildContext context) {
    Widget image_carousel =Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/girl.jpg'),
          AssetImage('assets/handsome.jpg'),
          AssetImage('assets/ppj.jpg'),
          AssetImage('assets/watch.jpg'),
          AssetImage('assets/mobile.jpg'),

        ],
        autoplay: false,
       // animationCurve: Curves.fastOutSlowIn,
      //  animationDuration: Duration(microseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
      dotBgColor:Colors.transparent,
      ),
    );
    // TODO: implement build
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('FashApp'),
        actions: <Widget>[
          IconButton(icon: 
          Icon(Icons.search,color:Colors.white),
          onPressed:(){
            print('Search button pressed');
          },),
          IconButton(icon:
           Icon(Icons.shopping_cart,
           color: Colors.white),
           onPressed:(){
          Navigator.push(context,
           MaterialPageRoute(
             builder: (context)=>ShoppingCart ()));
           } ,)
             

        ],
      ),
      drawer: drawerItems(),
      body: Column(children:<Widget>[
        // image carousel begin here 
        image_carousel,
        // padding widget

       Padding(padding: EdgeInsets.all(4.0),
       child:Container(
         alignment:Alignment.centerLeft,
       child:Text('Categories'),),),

       // horizontal list view begain 

       HorizontalListView(),

       // Padding widget

       Padding(padding: EdgeInsets.all(8.0),
       child:Container(
         alignment:Alignment.centerLeft,
         child: Text('Recent  Product'),
      )
      ),

       // grid view

      
         Flexible(child: ProductGrid(),)
       
    
       
      ])
    );
  }

  Widget  drawerItems(){
    return  Drawer(
        child:ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(Icons.person,color:Colors.white),
                ),
              ) ,
              accountName: Text('Suraksha Rathee'),
              accountEmail: Text('surksha8@gmail.com'),
              decoration: BoxDecoration(color: Colors.orange),
            ),
            
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.red),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,color: Colors.red),
              ),
            ),
             InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.red),
              ),
            ),
             InkWell(
              onTap: (){
                Navigator.push(
                  context,MaterialPageRoute(
                    builder: (context)=>ShoppingCart()
                  ) );
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.red)
              ),
            ),
             InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite,color: Colors.red),
              ),
            ),
             InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings,)
              ),
            ),
             InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),

          ],
        )
      );
  }
   }