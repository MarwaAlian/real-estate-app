import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttercoursenew/HomePage.dart';
import 'package:fluttercoursenew/view/screen/loginpage.dart';
import 'package:fluttercoursenew/view/widget/textformfield.dart';
//import 'package:fluttercoursenew/verificationpage.dart';

class Newpasswordpage extends StatefulWidget {
    const Newpasswordpage({super.key});
  State<Newpasswordpage> createState() =>_newpasswordpagestate();
}
class _newpasswordpagestate extends State<Newpasswordpage>{
  final TextEditingController newpasswordController = TextEditingController();
   final TextEditingController newpasswordconfigurationController = TextEditingController();
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
        Text("Enter new password ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey,),
        textAlign: TextAlign.center,),
        SizedBox(height: 100,),
            
            Form(
              key: form1,
              child: 
            textformfield(controllertext: newpasswordController, hinttext: "New Password", keyboardtype: TextInputType.visiblePassword,)
            ),
        
         /* TextField(
           
            controller:newpasswordController ,
            decoration: InputDecoration(
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(29),
              ),
              
              hintText: "New Password",
              hintStyle: TextStyle(color: Colors.grey,fontSize: 12)
              
              
            ),
          ),*/
        
         SizedBox(height: 29,),
         Form(
          key: form2,
          child: textformfield(controllertext: newpasswordconfigurationController , hinttext: "New password configuration", keyboardtype: TextInputType.visiblePassword,)),

       /* TextField(
          controller:newpasswordconfigurationController ,
          decoration: InputDecoration(
            hintText: "New password configuration",
            border: OutlineInputBorder(
               borderRadius:BorderRadius.circular(29),
              
           
          ),
           
            hintStyle: TextStyle(color: Colors.grey,fontSize: 12)
            
          
          ),),*/
          
         
           SizedBox(height: 100,),

         Container(
            
           
            margin: EdgeInsets.only(left: 80,right: 80),
            
            child: 
          MaterialButton(
            
            padding: EdgeInsets.all(10),
            onPressed: (){
               Navigator.of(context).pop(
                  MaterialPageRoute(builder: (context)=> Sellerpage())
                );
            },
          color:  Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
            child:  Text("Done",style: TextStyle(color: Colors.white,fontSize: 16),),
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
         