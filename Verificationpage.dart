import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttercoursenew/HomePage.dart';
import 'package:fluttercoursenew/view/screen/Verificationpage2.dart';




class Verificationpage extends StatefulWidget {
    const Verificationpage({super.key});
  State<Verificationpage> createState() =>_Verificationpagestate();
}
class _Verificationpagestate extends State<Verificationpage>{
  String ?  verificationCode ;
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
        Text("Choose  how to get the  verification code ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey,),
        textAlign: TextAlign.center,),
        SizedBox(height: 40,),
RadioListTile(
  title: Text("SMS",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
  value: "SMS",
   groupValue:  verificationCode, 
   onChanged:(val){
    setState(() {
      verificationCode=val;
    });
   }),

     SizedBox(height: 10,),
RadioListTile(
  title: Text("Call",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
  value: "Call",
   groupValue:  verificationCode, 
   onChanged:(val){
    setState(() {
      verificationCode=val;
    });
   }),

   SizedBox(height: 10,),
RadioListTile(
  title: Text("WhatsApp",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
  value: "WhatsApp",
   groupValue:  verificationCode, 
   onChanged:(val){
    setState(() {
      verificationCode=val;
    });
   }),


SizedBox(height: 180,),

         Container(
            
           
            margin: EdgeInsets.only(left: 180),
            
            child: 
          MaterialButton(
            
            padding: EdgeInsets.all(8),
            onPressed: (){
               Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context)=> Verificationpage2())
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
         