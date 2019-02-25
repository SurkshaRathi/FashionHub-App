import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import ‘package:firebase_auth/firebase_auth.dart’;
import '../pages/homepage.dart';

  class Login extends StatefulWidget{

  @override
  State<StatefulWidget> createState()=> LoginState();
}
 
 class LoginState extends  State<Login> with SingleTickerProviderStateMixin {

final GoogleSignIn googleSignIn =GoogleSignIn();
final FirebaseAuth _auth =FirebaseAuth.instance;
SharedPreferences preferences;
bool loading = false;
bool isLogedin =false;

/* AnimationController _iconAnimationController;
  Animation<double> _iconAnimation; */

  @override
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isSignedIn();

   /* super.initState();
    _iconAnimationController = new AnimationController(
        vsync : this,
        duration: new Duration(milliseconds: 100)
    );
    _iconAnimation=new CurvedAnimation(parent: _iconAnimationController, curve: Curves.bounceOut);
    _iconAnimation.addListener(()=>this.setState((){}));
    _iconAnimationController.forward();*/

    
  }
  void isSignedIn() async{
     setState(() {
      loading= true; 
     });
     preferences =await SharedPreferences.getInstance();
     isLogedin =await googleSignIn.isSignedIn();
     if(isLogedin){
    Navigator.pushReplacement(
      context, MaterialPageRoute(
        builder:(context)=>Home()));
     }
     setState(() {
      loading =false; 
     });
  }
  Future handlesSignIn() async{
    preferences =await SharedPreferences.getInstance();
    setState(() {
     loading= true; 
    });

    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication  googleSignInAuthentication=
    await googleUser.authentication;
    FirebaseUser firebaseUser =await _auth.signInWithGoogle(
      idToken:googleSignInAuthentication.idToken,
      accessToken:googleSignInAuthentication.accessToken
    );
    if(firebaseUser != null){
     final QuerySnapshot result = await Firestore.instance.
     collection('user').
     where('id',isEqualTo: firebaseUser.uid).getDocuments();
     final List<DocumentSnapshot>document=result.documents;
     if(document.length==0){
       // insert the user to our collection 
       Firestore.instance.collection('user').document(firebaseUser.uid).
       setData({
         'id':firebaseUser.uid,
         'username':firebaseUser.displayName,
         'profilePicture':firebaseUser.photoUrl,
       });
       await preferences.setString('id', firebaseUser.uid);
       await preferences.setString('username', firebaseUser.displayName);
       await preferences.setString('photoUrl', firebaseUser.displayName );
     } else{
        await preferences.setString('id', document[0]['id']);
       await preferences.setString('username', document[0]['username']);
       await preferences.setString('photoUrl', document[0]['photoUrl']);
     }
     Fluttertoast.showToast(msg: 'Login Successful');
     setState(() {
      loading =false;

     });
     
    }else{
     
    }
  }


  


    /* new Scaffold(backgroundColor: Colors.orange,
    body: new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Image(image: new AssetImage('asset/pic.png'),
        fit: BoxFit.cover,
       color: Colors.black87,
       colorBlendMode: BlendMode.darken),
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new  FlutterLogo(
              size: _iconAnimation.value*100,
            )
          ],
        ),
        Center(
          child: FlatButton(
            onPressed: (){
              handlesSignIn();
              
            },
            child: Text('Sign in /Sign up with google'),
          ) ,
         ) ,
         Visibility(
           visible: loading ?? true,
           child: Container(
             color: Colors.white.withOpacity(0.7),
             child: CircularProgressIndicator(
               valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
             ),
           ),
         )
         ],
    ));*/

    Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Login '),
        elevation: 0.5,
        centerTitle: true,
        backgroundColor: Colors.white,

      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: FlatButton(
              onPressed: (){
                handlesSignIn();
              },
              child: Text('Sign in / Sign up with google'),
            ),
          ),
          Visibility(
           visible: loading ?? true,
           child: Container(
             color: Colors.white.withOpacity(0.7),
             child: CircularProgressIndicator(
             valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
             ),
           ),
         ),
        ],
      ),
    ) ;
  }
}




