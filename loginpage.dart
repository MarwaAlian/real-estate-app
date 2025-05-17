//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttercoursenew/view/screen/Forgetpage.dart';
import 'package:fluttercoursenew/HomePage.dart';
import 'package:fluttercoursenew/view/screen/createaccount%20.dart';
import 'package:fluttercoursenew/view/screen/seller/realestate.dart';
import 'package:fluttercoursenew/view/widget/textformfield.dart';
//import 'package:awesome_dialog/awesome_dialog.dart';



class Sellerpage extends StatefulWidget {
    const Sellerpage({super.key});
  State<Sellerpage> createState() =>_Sellerpagestate();
}
class _Sellerpagestate extends State<Sellerpage>{
  final TextEditingController passwordController = TextEditingController();
   final TextEditingController emailController = TextEditingController();
   GlobalKey<FormState> form1=GlobalKey();
   GlobalKey<FormState> form2=GlobalKey();


  @override
 Widget build (BuildContext ontext){
  return Scaffold(
    backgroundColor: Colors.blueGrey,

      //appBar: AppBar(title: Text("homepage"),),
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
        Text("Enter your email and Password",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey,),
        textAlign: TextAlign.center,),
        SizedBox(height: 30,),
        Form(
          key: form1,
          child: textformfield(controllertext: emailController, hinttext: 'email or phone number', keyboardtype: TextInputType.text,)
         /* child: TextFormField(
             validator: (value) {
            if(value!.isEmpty){
              return" This feaild is required";
            }
          },
         
          controller:emailController ,
          decoration: InputDecoration(
            border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(30),
            ),
            
            hintText: "Email or phone number",
             hintStyle: TextStyle(color: Colors.grey,fontSize: 12)
            
            
          ),
        ),*/),
        
        
         SizedBox(height: 15,),
         Form(
          key: form2,
          child: textformfield(controllertext: passwordController, hinttext: 'Password', keyboardtype: TextInputType.visiblePassword,)
         /* child:
         TextFormField(
          validator: (value) {
            if(value!.isEmpty){
              return" This feaild is required";
            }
          },
          controller:passwordController ,
          decoration: InputDecoration(
            hintText: "Password",
             suffixIcon: Icon(Icons.visibility_off),
            border: OutlineInputBorder(
               borderRadius:BorderRadius.circular(30),
              
           
          ),
           hintStyle: TextStyle(color: Colors.grey,fontSize: 12)
          ),),*/
          ),
        
          SizedBox(height: 10,),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(onPressed:(){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> Forgetpage())
                );
            }, child: Text("Forget Password?",style: TextStyle(color: Colors.lightBlue),)),
          ),
          SizedBox(height: 25,),
          Container(
            margin: EdgeInsets.only(left: 90,right: 90),
            
            child: 
          MaterialButton(
            padding: EdgeInsets.all(10),
            onPressed: () async{
              
             /* if(form1.currentState !.validate()){
                try {
              final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text,
                     );
                  Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context)=> realestate())
                  );

                 } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                   print('No user found for that email.');
                    AwesomeDialog(
                    context: context,
                     dialogType: DialogType.error,
                     animType: AnimType.rightSlide,
                      title: "Error",
                      desc: 'No user found for that email.'
                       ).show();
                      } else if (e.code == 'wrong-password') {
                    print('Wrong password provided for that user.');
                     AwesomeDialog(
                     context: context,
                     dialogType: DialogType.error,
                     animType: AnimType.rightSlide,
                      title: "Error",
                      desc: 'Wrong password provided for that user.'
                       ).show();
                            }
                          
                

              
               // Navigator.of(context).pushReplacement(
                 // MaterialPageRoute(builder: (context)=> realestate())
               // );
            };*/},
          color: Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
           child:  Text("Log In",style: TextStyle(color: Colors.white,),),
            )
          ),
           SizedBox(height: 40),
           Text("You dont have an account?" ,style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold) ,),
           Align(
            alignment: Alignment.centerLeft,
           child:  TextButton(onPressed: (){
             Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context)=> Createaccount())
                );
           }, child: Text("Create account",style: TextStyle(color: Colors.lightBlue),
           
           )),),
           //SizedBox(height: 16),
           /*Container(
            
           
            margin: EdgeInsets.only(left: 180),
            
            child: 
          MaterialButton(
            
            padding: EdgeInsets.all(8),
            onPressed: (){},
          color:  Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
            child:  Text("Next",style: TextStyle(color: Colors.white,),),
          )
          ),*/



      ]
    )
    ),
  ),
),
      );
      
  
 }
}
         