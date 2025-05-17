import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttercoursenew/main.dart';
import 'package:fluttercoursenew/view/screen/loginpage.dart';
import 'package:fluttercoursenew/view/screen/customer/Customerpage.dart';
import 'package:fluttercoursenew/view/screen/seller/realestate.dart';

class HomePage extends StatefulWidget{
  const HomePage ({super.key});
  @override
  State<HomePage> createState() => _HomePagestate();
  
  
}
class _HomePagestate extends State <HomePage>{
 

  @override
  Widget build (BuildContext context){
    return Scaffold(
      //appBar: AppBar(title: Text("homepage"),),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("images/image1.jpeg",fit: BoxFit.cover,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 50),
                 padding: EdgeInsets.only(left: 80,right: 40),
               
                width: 600,
                color: const Color.fromARGB(90, 255, 255, 255),
               child: Text("Choose One",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold,shadows: [Shadow(
                offset: Offset(3, 3),blurRadius: 3,color:  Colors.blueGrey
              )]),),
              ),
              const SizedBox(height: 20,),
              Container(
                width: 220,
                height: 70,
               
                child: 
              MaterialButton(onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>Customerpage())
                );
              },
             
              height: 66,
              
              color:  Colors.blueGrey,
              textColor: Colors.white,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
               child: Text("buy/renting out",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              ),
              ),
               const SizedBox(height: 40,),
               Container(
              width: 220,
              height: 70,
                child: 
              MaterialButton(onPressed: (){
                FirebaseAuth.instance.currentUser==null? Sellerpage():realestate(items: [],);

                //Navigator.of(context).push(
                 // MaterialPageRoute(builder: (context)=>Sellerpage())
                //);
              },
           
              height: 66,
              color:  Colors.blueGrey,
              textColor: Colors.white,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
               child: Text("Sale/Rent",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center, ),
              ),),
            ]
          )
            ],
     
      ),

    
        );
       
  
  }
  
}







