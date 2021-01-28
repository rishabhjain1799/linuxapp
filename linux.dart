import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 var cmd;
  var output;
  var data;
  var p;
  var result;
  //var results;
  var out;
  List<String> textList = [];
  var comand;
  final nameHolder = TextEditingController();

  clearTextInput() {
    nameHolder.clear();
  }

  var fsconnect = FirebaseFirestore.instance;
  var authc = FirebaseAuth.instance;

  //final List<String> entries = <String>['A', 'B', 'C'];
  //final List<int> colorCodes = <int>[600, 500, 100];

  callWeb(cmd) async {
    var url = "http://192.168.43.61/cgi-bin/server.py?x=${cmd}";
    result = await http.get(url);
    p = result.body;
    print(cmd);
    print(p);
    fsconnect.collection("ListOfComands").add({"command": cmd, "result": p});
    setState(() {
      comand = cmd;
      out = p;
      //results = history;
    });
    var temp = "[root@localhost ~]#    ${comand} \n \n ${out}";
    textList.add(temp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        leading:IconButton(icon: Icon(Icons.arrow_back), onPressed: ()
          {
            Navigator.pushNamed(context, "home");
          }),
        title: const Text("Linux Terminal"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.https), onPressed: () async
          {try{
            await authc.signOut();
          }catch(e)
          {
            print(e);
          }
          Navigator.pushNamed(context, "login");
          }
          ),
        ],
      ),
      
      body: Container(
        color: Colors.black,
                child: Column(children: <Widget>[
          Flexible(
                child: ListView.builder(
                    itemCount: textList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          children: [
                            Text(textList[index],
                                style: TextStyle(
                                  color: Colors.amberAccent,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      );
                    })),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          child: Text("[root@localhost ~]#  " ,
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                        ),
                        Container(
                  width: 160,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                        cursorWidth: 1,
                        controller: nameHolder,
                        cursorColor: Colors.white,
                        onChanged: (value) {
                          cmd = value;
                        },
                        decoration: InputDecoration(),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text("Submit"),
                    onPressed: () {
                      try {
                        callWeb(cmd);
                        clearTextInput();
                        //showResult(out);
                      } catch (e) {}
                    },
                  ),
                ),
                      ],
                    ),
                
        ],)
      ),
    );
  }
}