import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Myhome extends StatefulWidget {
  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  var authc = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.https), onPressed: () async
          {
            try{
            await authc.signOut();
          }catch(e)
          {
            print(e);
          }
          Navigator.pushNamed(context, "login");
          }
          ),
        ],
        centerTitle: true,
        title:Text('Home Page'),
        backgroundColor: Colors.redAccent,
        ),
        body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Material(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                      elevation: 10,
                      child: MaterialButton(
                        minWidth:200,
                        height:40,
                        child:Text('Linux'), 
                        onPressed: (){
                          Navigator.pushNamed(context,"command");
                        },
                        ),
            ),

            SizedBox(
              height: 40,
              ),
             Material(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                      elevation: 10,
                      child: MaterialButton(
                        minWidth:200,
                        height:40,
                        child:Text('Docker'), 
                        onPressed: (){
                          Navigator.pushNamed(context,"docker");
                        },
                        ),
            ),
            SizedBox(
              height: 40,
              ),
             Material(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                      elevation: 10,
                      child: MaterialButton(
                        minWidth:200,
                        height:40,
                        child:Text('Terminal'), 
                        onPressed: (){
                          Navigator.pushNamed(context,"linux");
                        },
                        ),
            ),

            SizedBox(
              height: 40,
              ),
             Material(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                      elevation: 10,
                      child: MaterialButton(
                        minWidth:200,
                        height:40,
                        child:Text('Terraform'), 
                        onPressed: (){
                          Navigator.pushNamed(context,"terraform");
                        },
                        ),
            ),      
          ],),
        )
        )
    );
  }
}