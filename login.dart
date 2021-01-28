import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Mylogin extends StatefulWidget {
  @override
  _MyloginState createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  var authc = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Login Page'),
        backgroundColor: Colors.redAccent,
        ),
        body:
       Center(
          child: Container(
            width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>
              [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged:(value){
                    email=value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                 ),
                ),
                SizedBox(
                  height: 15
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onChanged:(value)
                  {
                    password = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                 ),
                ),
                SizedBox(
                  height: 30
                ),
                Material(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10),
                        elevation: 10,
                        child: MaterialButton(
                          minWidth:200,
                          height:40,
                          child:Text('Login'), 
                          onPressed: () async
                          {
                            try{
                             var user = await authc.signInWithEmailAndPassword(email: email, password: password);
                             if(user != null)
                             {
                               Navigator.pushNamed(context, "home");
                             }
                          }catch(e)
                          {
                            print(e);
                            Fluttertoast.showToast(msg:"Either Email or Password is wrong",);
                          }
                          },
                          ),
              ),
              ],
          ),     
          ),
       ),
       );
  }
}