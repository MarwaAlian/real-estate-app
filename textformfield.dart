import 'package:flutter/material.dart';

class textformfield extends StatelessWidget {
  final TextEditingController controllertext;
  final String hinttext;
  final  TextInputType keyboardtype;
  textformfield({super.key, required this.controllertext, required this.hinttext, required this.keyboardtype, });
   TextEditingController emailController=TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
             validator: (value) {
            if(value!.isEmpty){
              return" This feaild is required";
            }
          },
         
          controller:controllertext ,
          keyboardType: keyboardtype,
          decoration: InputDecoration(
            border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(30),
            ),
            
            hintText: hinttext,
             hintStyle: TextStyle(color: Colors.grey,fontSize: 16)
            
            
          ),
        );
        

      

    
  }
}