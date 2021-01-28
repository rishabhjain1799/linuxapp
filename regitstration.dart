import 'package:flutter/material.dart';

class Myreg extends StatefulWidget {
  @override
  _MyregState createState() => _MyregState();
}

class _MyregState extends State<Myreg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('LINUX'),
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
                        child:Text('Registration'), 
                        onPressed: (){
                          Navigator.pushNamed(context,"regis");
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
                        child:Text('Login'), 
                        onPressed: (){
                          Navigator.pushNamed(context,"login");
                        },
                        ),
            ),      
          ],),
        ),
      ),
    );
  }
}