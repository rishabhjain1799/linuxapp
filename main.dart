import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:swaiksha/register.dart';
import 'package:swaiksha/terraform.dart';
import 'audio.dart';
import 'command.dart';
import 'docker.dart';
import 'form.dart';
import 'home.dart';
import 'linux.dart';
import 'regitstration.dart';
import 'login.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
 runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "reg",
      routes: {
        "home": (context) => Myhome(),
        "reg" : (context) => Myreg(),
        "login" : (context) => Mylogin(),
        "form" : (context) => Myform(),
        "regis" : (context) => Myregis(),
        "linux" : (context) => Home(),
        "docker" : (context) => Mydocker(),
        "command" : (context) => Mycmd(),
        "terraform": (context) => Mytera(),
        "audio": (context) => Myaudio(),     
      },
    )
  );
}