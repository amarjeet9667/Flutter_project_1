import 'package:flutter/material.dart';
import 'package:spro_1/MainActivity.dart';
import 'package:spro_1/forget.dart';
import 'package:spro_1/login.dart';
import 'package:spro_1/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'MainActivity': (context) => MyLogin(),
      'login':(context)=> MyLoginp(),
      'signup':(context)=> MySignup(),
      'forget':(context)=> MyForget(),
      'MainActivity':(context)=> MyLogin(),
      'MainActivity':(context)=> MyLogin(),
      'MainActivity': (context)=> MyLogin(),
    },
  ));
}
