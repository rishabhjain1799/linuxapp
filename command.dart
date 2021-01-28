import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Mycmd extends StatefulWidget {
  @override
  _MycmdState createState() => _MycmdState();
}

class _MycmdState extends State<Mycmd> {
  String p;
  var authc = FirebaseAuth.instance;
  web(cmd) async
  {
    var url = "http://192.168.43.61/cgi-bin/server.py?x=${cmd}";
    var response = await http.get(url);
    setState(() {
      p = response.body;
    });
  }
  String cmd;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:Text('Linux Commands'),
          backgroundColor: Colors.redAccent,
          leading:IconButton(icon: Icon(Icons.arrow_back), onPressed: ()
          {
            Navigator.pushNamed(context, "home");
          }),
          actions: <Widget>[
          IconButton(icon: Icon(Icons.https), onPressed: () async
          {try{
            await authc.signOut();
          }catch(e)
          {
            print(e);
          }
          Navigator.pushNamed(context, "login");
          },
          ),
        ],
          ),
          body: Center(
            child: ListView(children: <Widget>[
               Column(children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Card(
                  child: TextField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                   hintText: "Enter the Linux command",
                   prefixIcon: Icon(Icons.dock),
                 ),
                    onChanged: (value)
                    {
                      cmd = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Card (
                  child: 
                  Text("$p"),
                ),
                SizedBox(
                  height: 40,
                ),
                Card(
                  child: Material(
                        color: Colors.redAccent,
                        elevation: 10,
                        child: MaterialButton(
                          minWidth:200,
                          height:40,
                          color: Colors.redAccent,
                          child:Text('Submit'), 
                          onPressed: ()
                          {
                            web(cmd); 
                          },
                         ),
              ),
                  ),    
              ],)
          ]),
      )
    ));  
  }
  }