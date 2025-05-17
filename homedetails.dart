import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttercoursenew/HomePage.dart';
import 'package:fluttercoursenew/view/screen/seller/Detailpage.dart';

class homedetails extends StatelessWidget {
  //GlobalKey<FormState> form1=GlobalKey();
    final String hinttext;
    final TextEditingController mycontroller;
    final Icon icone;
    final  TextInputType keyboardtype;
       final Function(String?)? onsaved;
    const homedetails({super.key, required this.hinttext, required this.mycontroller, required this.icone, required this.keyboardtype,required this.onsaved});
     


    @override
 Widget build (BuildContext ontext){
  return  Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                       color: const Color.fromARGB(144, 245, 245, 245),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blueGrey)
                    ),
                     width: 90,
                    height: 100,
                   
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        
                          
                             Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: icone ),
                        Container(
                         
                          width: 40,
                          height: 40,
                          child: TextFormField(
                            readOnly: true,
                            controller: mycontroller,
                            textAlign: TextAlign.center,
                            
                            validator: (value){
                              if(value!.isEmpty){
                                return "This field is reqyired";
                              }
                          
                            },
                            onSaved: onsaved,
                            keyboardType:keyboardtype,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                               fillColor: Colors.white,
                              filled: true,
                              hintText: hinttext,
                              hintStyle: TextStyle(color: Colors.black,fontSize: 16),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                     
                      ],
                    ),
                   

                  )

                 
                    ],
                  );
                  
                   
    

  
}}

   
  
  
 

