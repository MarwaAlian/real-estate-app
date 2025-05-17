//import 'package:flutter/foundation.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttercoursenew/view/screen/Verificationpage.dart';
//import 'package:fluttercoursenew/HomePage.dart';
import 'package:fluttercoursenew/view/widget/textformfield.dart';
//import 'package:fluttercoursenew/verificationpage.dart';

class Forgetpage extends StatefulWidget {
    const Forgetpage({super.key});
    @override
  State<Forgetpage> createState() =>_Forgetpagestate();
}
class _Forgetpagestate extends State<Forgetpage>{
   GlobalKey<FormState> form1=GlobalKey();
   GlobalKey<FormState> form2=GlobalKey();
  final TextEditingController emailController = TextEditingController();
   final TextEditingController userNameController = TextEditingController();

  @override
 Widget build (BuildContext ontext){
  return Scaffold(
    backgroundColor: Colors.blueGrey,

      
      body:Center(
child: Container(
  height: 600,
  margin: EdgeInsets.all(24),
  padding: EdgeInsets.all(24),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12)
  ),
  child: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("Forget password",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey,),
        textAlign: TextAlign.center,),
        SizedBox(height: 100,),
      Form(
        key: form1,
        child: 
      textformfield(controllertext: userNameController, hinttext: "Username", keyboardtype: TextInputType.name,)
      
      ),
        /*TextField(
         
          controller:userNameController ,
          decoration: InputDecoration(
            border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(30),
            ),
            
            hintText: "UserName",
             hintStyle: TextStyle(color: Colors.grey,fontSize: 12)
            
            
          ),
        ),*/
         SizedBox(height: 29,),
           Form(
            key: form2,
            child: 
             textformfield(controllertext: emailController, hinttext: "Email or phone number", keyboardtype: TextInputType.text,)
           ),
       /* TextField(
          controller:emailController ,
          decoration: InputDecoration(
            hintText: "Email or phone number",
            border: OutlineInputBorder(
               borderRadius:BorderRadius.circular(30),
              
           
          ),
           hintStyle: TextStyle(color: Colors.grey,fontSize: 12)
          
          ),),*/
          
         
           SizedBox(height: 180),
           Container(
            
           
            margin: EdgeInsets.only(left: 180),
            
            child: 
          MaterialButton(
            
            padding: EdgeInsets.all(8),
            onPressed: (){
               Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context)=> Verificationpage())
                );
            },
          color:  Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
            child:  Text("Next",style: TextStyle(color: Colors.white,),),
          )
          ),



      ]
    )
    ),
  ),
),
      );
      
  
 }
}
         