import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttercoursenew/HomePage.dart';
import 'package:fluttercoursenew/view/screen/loginpage.dart';
import 'package:fluttercoursenew/view/screen/seller/addproprety.dart';
import 'package:fluttercoursenew/view/widget/textformfield.dart';
//import 'package:fluttercoursenew/verificationpage.dart';

class Idinfo extends StatefulWidget {
    const Idinfo ({super.key});
  State<Idinfo > createState() =>_Idinfostate ();
}
class _Idinfostate  extends State<Idinfo >{
  final TextEditingController idnumber = TextEditingController();
   final TextEditingController ownreshipcontract= TextEditingController();
    GlobalKey<FormState> form1=GlobalKey();
   GlobalKey<FormState> form2=GlobalKey();

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
        Text("Add ID info and ownership contract",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey,),
        textAlign: TextAlign.center,),
        SizedBox(height: 100,),

        Form(
          key: form1,
          child: textformfield(controllertext: idnumber, hinttext: "ID number", keyboardtype: TextInputType.number)
        ),
          /*TextField(
           
            controller:idnumber ,
            decoration: InputDecoration(
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(29),
              ),
              
              hintText: "ID number",
              hintStyle: TextStyle(color: Colors.grey,fontSize: 12)
              
              
            ),
          ),*/
        
         SizedBox(height: 29,),
         Form(
          child: textformfield(controllertext: ownreshipcontract, hinttext: "Ownreship contract", keyboardtype: TextInputType.url)
         ),
        /*TextField(
          controller:ownreshipcontract ,
          decoration: InputDecoration(
            hintText: "Ownreship contract",
            border: OutlineInputBorder(
               borderRadius:BorderRadius.circular(29),
              
           
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
                  MaterialPageRoute(builder: (context)=> Addproprety())
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
         