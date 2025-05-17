//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'package:fluttercoursenew/HomePage.dart';
import 'package:fluttercoursenew/view/screen/loginpage.dart';
import 'package:fluttercoursenew/view/widget/textformfield.dart';
//import 'package:fluttercoursenew/realestate.dart';
//import 'package:fluttercoursenew/verificationpage.dart';

class Createaccount  extends StatefulWidget {
    const  Createaccount({super.key});
  State< Createaccount> createState() => _Createaccountstate();
}
class _Createaccountstate extends State<Createaccount>{
  final TextEditingController fullname = TextEditingController();
   final TextEditingController phonenumber = TextEditingController();
   final TextEditingController email = TextEditingController();
   final TextEditingController password = TextEditingController();
   final TextEditingController passwordconfirmation = TextEditingController();
    GlobalKey<FormState> form1=GlobalKey();
   GlobalKey<FormState> form2=GlobalKey();
    GlobalKey<FormState> form3=GlobalKey();
   GlobalKey<FormState> form4=GlobalKey();
    GlobalKey<FormState> form5=GlobalKey();
 
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
        Text("create new account ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey,),
        textAlign: TextAlign.center,),
        SizedBox(height: 25,),
        Form(
          key: form1,
          child:
        textformfield(controllertext: fullname, hinttext: " Enter Fullname", keyboardtype: TextInputType.name,)
       /* TextFormField(
          keyboardType: TextInputType.name,
          validator: (value) {
            if(value!.isEmpty){
              return" This feild is required";            }
          },
         
          controller:fullname ,
          decoration: InputDecoration(
            border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(30),
            ),
            
            hintText: " Enter Fullname",
            hintStyle: TextStyle(color: Colors.grey,fontSize: 12)
            
            
          ),
        ),*/
        
         ),
        
         SizedBox(height: 10,),

         Form(key: form2,
          child: 
          textformfield(controllertext: phonenumber, hinttext: " Enter Phone Number", keyboardtype: TextInputType.phone,)
          /* TextFormField(
           keyboardType: TextInputType.phone,
          validator: (value) {
            if(value!.isEmpty){
              return" This feild is required";            }
          },
          controller:phonenumber ,
          decoration: InputDecoration(
            hintText: " Enter Phone Number",
            border: OutlineInputBorder(
               borderRadius:BorderRadius.circular(30),
              
           
          ),
           
            hintStyle: TextStyle(color: Colors.grey,fontSize: 12)
            
          
          ),),*/),
       
           SizedBox(height: 10,),
           Form(
            key: form3,
            child: textformfield(controllertext: email, hinttext: " Enter Email", keyboardtype: TextInputType.emailAddress,)
          /* TextFormField(
             keyboardType: TextInputType.emailAddress,
            validator: (value) {
            if(value!.isEmpty){
              return" This feild is required";            }
          },
          controller:email ,
          decoration: InputDecoration(
            hintText: " Enter Email",
            border: OutlineInputBorder(
               borderRadius:BorderRadius.circular(30),
              
           
          ),
           
            hintStyle: TextStyle(color: Colors.grey,fontSize: 12)
            
          
          ),),*/ ),
       
           SizedBox(height: 10,),
           Form(
            key: form4,
            child: 
            textformfield(controllertext: password, hinttext: " Enter Password", keyboardtype: TextInputType.visiblePassword)
            /* TextFormField(
             
            validator: (value) {
            if(value!.isEmpty){
              return" This feild is required";            }
          },
          controller:password,
          decoration: InputDecoration(
            hintText: " Enter Password",
            border: OutlineInputBorder(
               borderRadius:BorderRadius.circular(30),
              
           
          ),
           
            hintStyle: TextStyle(color: Colors.grey,fontSize: 12)
            
          
          ),),*/),

       
           SizedBox(height: 10,),
           Form(
            key: form5,
            child:textformfield(controllertext: passwordconfirmation , hinttext: " Enter Password Confirmation", keyboardtype: TextInputType.visiblePassword)
            /*TextFormField(
            validator: (value) {
            if(value!.isEmpty){
              return" This feild is required";            }
          },
          controller:passwordconfirmation ,
          decoration: InputDecoration(
            hintText: " Enter Password Confirmation",
            border: OutlineInputBorder(
               borderRadius:BorderRadius.circular(30),
              
           
          ),
           
            hintStyle: TextStyle(color: Colors.grey,fontSize: 12)
            
          
          ),),*/ ),
        
           SizedBox(height: 20,),

         Container(
            
           
            margin: EdgeInsets.only(left: 80,right: 80),
            
            child: 
          MaterialButton(
            
            padding: EdgeInsets.all(8),
            onPressed: () async{
             /* try  {
             final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: email.text,
               password: password.text,
                                 );
                       Navigator.of(context).pushReplacement(
                   MaterialPageRoute(builder: (context)=> realestate())
                 );
                } on FirebaseAuthException catch (e) {
            if (e.code == 'weak-password') {
              print('The password provided is too weak.');
            } else if (e.code == 'email-already-in-use') {
             print('The account already exists for that email.');
                  }
                       } catch (e) {
                         print(e);
                                   }
              // Navigator.of(context).pushReplacement(
                   // MaterialPageRoute(builder: (context)=> realestate())
                 // );*/
            },
          color:  Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
            child:  Text("Sign up",style: TextStyle(color: Colors.white,),),
          )
          ),

          Container(height: 16,),
           /*Container(
            alignment: Alignment.topRight,
               child: TextButton(onPressed: (){
              Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> Sellerpage())
                  );
            }, 
            child: Text(" Log in ",style: TextStyle(color: Colors.lightBlue),textAlign: TextAlign.right,)),
           ),
             Container(height: 0,),
           Text("Already have account?"),*/

           /*Container(
            
               child: TextButton(onPressed: (){
              Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> Sellerpage())
                  );
            }, 
            child: Text(" Log in ",style: TextStyle(color: Colors.lightBlue),textAlign: TextAlign.right,)),
           )*/
          RichText(text: TextSpan(
            text: "Already have account?", style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
            children: [
               TextSpan(
                text: "  Log in",style: TextStyle(color: Colors.lightBlue,fontSize: 18,fontWeight: FontWeight.bold),
                recognizer: TapGestureRecognizer()
                ..onTap=(){
                   Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context)=> Sellerpage())
                  );
                }
               )
            ]
          ))
       
      ]
    )
    ),
  ),
),
      );
      
  
 }
}
         