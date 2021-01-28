import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Myregis extends StatefulWidget {
  @override
  _MyregisState createState() => _MyregisState();
}

class _MyregisState extends State<Myregis> {
  var authc = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title:Text('Registration Form'),
        backgroundColor: Colors.redAccent,
        ),
        body:
       Center(
         child: SingleChildScrollView(
          child: Container(
            width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>
              [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged:(value){
                    email = value;
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
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  onChanged:(value){
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
                          child:Text('Submit'), 
                          onPressed:() async
                          {
                            try {
                            var user = await authc.createUserWithEmailAndPassword(email: email, password: password);
                            print(user);
                            }
                            catch(e)
                            {
                              print(e);
                              Fluttertoast.showToast(msg: "You are successfully Registered ");
                            }
                          },
                          ),
              ),
              ],
          ),
    ),
    ),
       )
       );
  }
}