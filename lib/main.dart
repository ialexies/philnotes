 import 'package:flutter/material.dart';
 import 'package:google_sign_in/google_sign_in.dart';
//  import 'packaged:route';
 import './home.dart';



void main()=>runApp(MyApp());

 class MyApp extends StatefulWidget {
   @override
   _MyAppState createState() => _MyAppState();
 }
 
 class _MyAppState extends State<MyApp> {
  bool _isLoggedIn = false;
   
  //  Initialize a variable for googlesignin 
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

   _login() async{
     try {
       await _googleSignIn.signIn();
       setState(() {
         _isLoggedIn=true;
        	 
       });

			 	Navigator.push(context, MaterialPageRoute(builder: (context){
           return Home();
         }));
     		}
     catch(err) {
       print(err);
     }
   }

   _logout() {
     _googleSignIn.signOut();
     setState(() {
      _isLoggedIn=false; 
     });
   }

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
      
    

       home: Scaffold(
         body: Center(
           child: _isLoggedIn
           ? 
					//  Column(
          //    mainAxisAlignment: MainAxisAlignment.center,
          //    children: <Widget>[
          //      Image.network(
          //        _googleSignIn.currentUser.photoUrl,
          //        height: 50,
          //        width: 50,),
          //        Text(_googleSignIn.currentUser.displayName ),
          //        Text(_googleSignIn.currentUser.email),
          //        Text(_googleSignIn.currentUser.id),

          //        OutlineButton(
          //          child: Text("Logout"),
          //          onPressed: (){
          //            _logout();
          //          },
          //        ),
               
          //    ],
          //  )
           
					 	Home()
					  : Column(
							mainAxisAlignment:MainAxisAlignment.center,
							children: <Widget>[
								Image(
									image: AssetImage(
										'images/google.png'
									),
								),
								OutlineButton(
									child: Text("Login with Google"),
										onPressed: (){
											_login();
										},
              	),
							],
						),
         ),
       )
     );
   }
 }