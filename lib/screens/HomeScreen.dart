import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_user_login/screens/LoginScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final FirebaseUser user;
  FirebaseAuth auth = FirebaseAuth.instance;
  HomeScreen({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        actions: <Widget>[
          FlatButton(
            child: Text('Logout', style: TextStyle(fontSize: 32.0, color: Colors.blueAccent)),
            onPressed: () async => aw``````ait FirebaseAuth.instance.signOut()
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("You are Logged in succesfully",
              style: TextStyle(color: Colors.lightBlue, fontSize: 32),),
            SizedBox(height: 16,),
            Text("${user.phoneNumber}", style: TextStyle(color: Colors.grey,),),

          ],
        ),

      ),
    );

  }





}