import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HorizontalListView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height:80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
         Padding(padding:EdgeInsets.all(2.0),
         child:InkWell(onTap:(){},
         child: Container(
           width: 100,
           child:   ListTile(
         title: Icon(FontAwesomeIcons.tshirt,
         size: 40.0),
         subtitle: Container(
           alignment:Alignment.topCenter,
            child: Text('Shirt',
            style:TextStyle(
              color:Colors.black,
              fontSize:12.0)),
          ))
          )
          )
           ),
           Padding(padding:EdgeInsets.all(2.0),
         child:InkWell(onTap:(){},
         child: Container(
           width: 100,
           child:   ListTile(
         title: Icon(FontAwesomeIcons.mobileAlt,
         size: 40.0),
         subtitle: Container(
           alignment:Alignment.topCenter,
            child: Text('Mobile',style:TextStyle(color:Colors.black,fontSize:12.0)),
          ))
          )
          )
           ) ,
            Padding(padding:EdgeInsets.all(2.0),
         child:InkWell(onTap:(){},
         child: Container(
           width: 100,
           child:   ListTile(
         title: Icon(FontAwesomeIcons.userTie,
         size: 40.0),
         subtitle: Container(
           alignment:Alignment.topCenter,
            child: Text('Ties',style:TextStyle(color:Colors.black,fontSize:12.0)),
          ))
          )
          )
           ) ,
            Padding(padding:EdgeInsets.all(2.0),
         child:InkWell(onTap:(){},
         child: Container(
           width: 100,
           child:   ListTile(
         title: Icon(FontAwesomeIcons.book,
         size: 40.0),
         subtitle: Container(
           alignment:Alignment.topCenter,
            child: Text('Book',style:TextStyle(color:Colors.black,fontSize:12.0)),
          ))
          )
          )
           ) ,
            Padding(padding:EdgeInsets.all(2.0),
         child:InkWell(onTap:(){},
         child: Container(
           width: 70,
           child:   ListTile(
         title: Icon(FontAwesomeIcons.laptop,
         size: 40.0),
         subtitle: Container(
           alignment:Alignment.topCenter,
            child: Text('Laptop',style:TextStyle(color:Colors.black,fontSize:12.0)),
          ))
          )
          )
           ) ,
            Padding(padding:EdgeInsets.all(2.0),
         child:InkWell(onTap:(){},
         child: Container(
           width: 100,
           child:   ListTile(
         title: Icon(FontAwesomeIcons.smoking,
         size: 40.0),
         subtitle: Container(
           alignment:Alignment.topCenter,
            child: Text('Smoking',style:TextStyle(color:Colors.black,fontSize:12.0)),
          ))
          )
          )
           ) ,
            Padding(padding:EdgeInsets.all(2.0),
         child:InkWell(onTap:(){},
         child: Container(
           width: 100,
           child:   ListTile(
         title: Icon(FontAwesomeIcons.clock,
         size: 40.0),
         subtitle: Container(
           alignment:Alignment.topCenter,
            child: Text('Clock',style:TextStyle(color:Colors.black,fontSize:12.0)),
          ))
          )
          )
           ) 

          
          ],
      ),
      );
  }
}
/*class Categories extends StatelessWidget{
 final String image_location;
 final String image_capture;

 Categories(
   {this.image_location,
   this.image_capture}
   );


  Widget build(BuildContext context){
    return Padding(padding:EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
    child: Container(
      width:100,
      child:ListTile(
      title:Image.asset('image_location',
      width:100,
      height:80
      ),
      subtitle:Container(
        alignment:Alignment.topCenter,
        child: Text(image_capture,
        style: TextStyle(color:Colors.black,fontSize:12.0)
      ),)
    )),
    );
  }
} */

