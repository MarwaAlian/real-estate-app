import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttercoursenew/HomePage.dart';
import 'package:fluttercoursenew/view/screen/newpasswordpage.dart';

class Verificationpage2 extends StatefulWidget {
    const Verificationpage2({super.key});
  State<Verificationpage2> createState() =>_Verificationpage2state();
}
class _Verificationpage2state extends State<Verificationpage2>{
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
        Text("Enter the verification code ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey,),
        textAlign: TextAlign.center,),
        SizedBox(height: 120,),
   Row(
    children: [
          Container(
            margin: EdgeInsets.all(2),
        
          height: 50,
          width: 40,
           child: TextField(
            onChanged: (val){
              if(val.length==1){
                FocusScope.of(context).nextFocus();
              }

            },
           inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
           ],
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlue,width: 2)
              )
            ),

           
           ),
         ),
        // SizedBox(width: 5,),
         /* Container(
          height: 50,
          width: 40,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black,width: 2)
          ) ,
          
         ),*/
         
         Container(
           margin: EdgeInsets.all(2),
          height: 50,
          width: 40,
           child: TextField(
             onChanged: (val){
              if(val.length==1){
                FocusScope.of(context).nextFocus();
              }

            },
           inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
           ],
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlue,width: 2)
              )
            ),

           
           ),
         ),
        // SizedBox(width: 5,),
           Container(
             margin: EdgeInsets.all(2),
          height: 50,
          width: 40,
           child: TextField(
             onChanged: (val){
              if(val.length==1){
                FocusScope.of(context).nextFocus();
              }

            },
           inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
           ],
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlue,width: 2)
              )
            ),

           
           ),
         ),
         //SizedBox(width: 5,),
           Container(
             margin: EdgeInsets.all(2),
          height: 50,
          width: 40,
           child: TextField(
             onChanged: (val){
              if(val.length==1){
                FocusScope.of(context).nextFocus();
              }

            },
           inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
           ],
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlue,width: 2)
              )
            ),

           
           ),
         ),
         //SizedBox(width: 5,),
           Container(
             margin: EdgeInsets.all(2),
          height: 50,
          width: 40,
           child: TextField(
             onChanged: (val){
              if(val.length==1){
                FocusScope.of(context).nextFocus();
              }

            },
           inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
           ],
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlue,width: 2)
              )
            ),

           
           ),
         ),
        // SizedBox(width: 5,),
           Container(
             margin: EdgeInsets.all(2),
          height: 50,
          width: 40,
           child: TextField(
             onChanged: (val){
              if(val.length==1){
                FocusScope.of(context).nextFocus();
              }

            },
           inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
           ],
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlue,width: 2)
              )
            ),

           
           ),
         ),

        
    ],
   ),
    SizedBox(height: 30,),

         Align(
            alignment: Alignment.centerLeft,
           child:  TextButton(onPressed: (){}, child: Text("Resend",style: TextStyle(color: Colors.lightBlue,fontSize: 16),
           
           )),),
           

SizedBox(height: 140,),

         Container(
            
           
            margin: EdgeInsets.only(left: 70,right: 70),
            
            child: 
          MaterialButton(
            
            padding: EdgeInsets.all(10),
            onPressed: (){
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context)=> Newpasswordpage())
                );
            },
          color:  Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
            child:  Text("submit",style: TextStyle(color: Colors.white,fontSize: 16),),
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
         