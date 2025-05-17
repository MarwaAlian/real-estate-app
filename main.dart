// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'package:fluttercoursenew/HomePage.dart';
import 'package:fluttercoursenew/view/screen/loginpage.dart';
import 'package:fluttercoursenew/view/screen/customer/Customerpage.dart';

import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatefulWidget {
    const MyApp({super.key});
  State<MyApp> createState() =>_MyAppState();
}
class _MyAppState extends State<MyApp>{
  @override
  void initState() {
   FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
    super.initState();
  }
  @override
 Widget build (BuildContext ontext){
  return MaterialApp(
    debugShowCheckedModeBanner:false,
    home:HomePage(),
   /* routes: {
      "homepage":(context)=>HomePage(),
      "seller":(context)=> Sellerpage(),
      "customer":(context)=>Customerpage()
     
    },*/

  );
 }
}
 
 
 


