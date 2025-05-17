// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
//import 'package:fluttercoursenew/Detailpage.dart';
//import 'package:fluttercoursenew/HomePage.dart';
//import 'package:fluttercoursenew/IDinfo.dart';
import 'package:fluttercoursenew/view/screen/seller/realestate.dart';


class Addproprety extends StatefulWidget {
    const Addproprety({super.key});
    @override
  State<Addproprety> createState() =>_Addpropretystate();
  //final Function(Map<String,dynamic>) onPropretyAdded;
}
class _Addpropretystate extends State<Addproprety>{
  final TextEditingController datecontroller=TextEditingController();
  void pickDate() async{
    final date = await showDatePicker(
      context: context,
      initialDate: date2,
       firstDate: DateTime(2000), 
       lastDate: DateTime(2100),) ;
       if(date != null){
        datecontroller.text= "${date.day}/${date.month}/${date.year}";
       }
  }
  DateTime date2 = DateTime.now();
  
  var  properttype;
   String City ="Amman";  
  double price=0.0;
  var propertystate;
  int bednum=0;
  int levnum=0;
  int bathnum=0;
  int garnum=0;
  double are=0;
  String loc="";
  String datetime="$showDatePicker()";
  String state="";
  String typeprop="";
  //bool isEmpty=false;
  GlobalKey<FormState> formstate1=GlobalKey();
  GlobalKey<FormState> formstate2=GlobalKey();
   GlobalKey<FormState> formstate3=GlobalKey();
    GlobalKey<FormState> form4=GlobalKey();
     GlobalKey<FormState> formstate5=GlobalKey();
      GlobalKey<FormState> formstate6=GlobalKey();
      GlobalKey<FormState> formstate7=GlobalKey();
      GlobalKey<FormState> formstate8=GlobalKey();
      List prop=[];
      
  

  @override
 Widget build (BuildContext ontext){
  return Scaffold( 
   
    backgroundColor: Colors.white,
      /*appBar: AppBar(
        backgroundColor: Colors.white,
        ),*/
      body:ListView(
        padding: EdgeInsets.all(10),
        
        children: [

          Container(
            margin: EdgeInsets.only(top: 30),
            //color: Colors.red,
            width: 60,
            height: 60,
            alignment: Alignment.topLeft,
            child: IconButton(
              color: const Color.fromARGB(255, 129, 128, 128),
             
              onPressed: (){}, icon: Icon(Icons.settings,size: 40,)),
          ),
          Container(height: 10,),
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(  color: const Color.fromARGB(54, 170, 170, 170),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blueGrey,width: 1)
                    ),
                    width: 400,
                    height: 160,
                  

                  ),
                  Center(
                    child: IconButton(
                    
                      onPressed: (){

                      }, icon: Icon(Icons.add_photo_alternate,size: 60,),
                   padding: EdgeInsets.only(top: 50,bottom: 10),
                   color: Colors.blueGrey,
                    ),
                  )
                ],
              ),
              Container(height: 10,),
              Form(
                key: formstate1,
                
                child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              
                
                children: [
                  
                  Container(
                      margin: EdgeInsets.all(10),
                    width: 240,
                    height: 40,
                    child: TextFormField(
                      onSaved: (val){
                              City= val!;
                            },
                      
                      textAlign: TextAlign.center,

                      validator: (val){
                        if(val!.isEmpty){
                          return "This field is required";
                        }else{
                          return null;
                        }
                         
                    
                                    
                    
                      },
                      //cursorWidth: 100,
                      //cursorHeight: 30,
                      
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blueGrey,width: 1)
                        ),
                        
                        hintText: "City , region",
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 19,
                        
                        
                        
                       
                        ),
                        
                         prefixIcon:
                        
                         Icon(Icons.location_on,color: Colors.blueGrey,size: 25,),
                         fillColor: Colors.white,
                         filled: true,
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blueGrey,width: 1)
                    ),
                    width: 100,
                    height: 40,
                    child: DropdownButton(
                      hint: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(" Select ",style: TextStyle(color: Colors.grey,fontSize: 12),//textAlign: TextAlign.center,
                        ),
                      ),
                      underline: Divider(thickness: 0,),
                      
                      items: ["Sale","Rent"].map( (e) => DropdownMenuItem(
                      child: Text("$e"), value: e,)).toList(), 
                    onChanged: (val){
                      setState(() {
                        propertystate=val;
                      });
                      
                    
                    },
                    value: propertystate,
                    
                    ),
                  )

                ],
              )
              ),
              Form(
                key: formstate2,
                child: Row(
                  children: [
                    Container(
                
                
                margin: EdgeInsets.all(10),
                width: 200,
                height: 50,
               /* decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blueGrey,width: 1),
                 
                  
                ),*/
                 child: TextFormField(
                  onSaved: (val){
                              price= double.parse(val!);
                            },
                  
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    //contentPadding: EdgeInsets.symmetric(horizontal: 110,vertical: 9),
                    contentPadding: EdgeInsets.only(top: 11,left: 40),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey,width: 1),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: "00.000",
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 25),
                    fillColor: Colors.white,
                    filled: true,
                  ),


                 ),
              ),
               Container(width:  3),
                    
                      Container(
                        //padding: EdgeInsets.only(left: 10),
                      
                      // margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blueGrey,width: 1)
                      ),
                      width: 140,
                      height: 50,
                      child: DropdownButton(
                        hint: Container(
                        //margin: EdgeInsets.only(left: 20),
                        
                          padding: EdgeInsets.only(left: 30),
                          child: Text(" Select ",style: TextStyle(color: Colors.grey,fontSize: 12),//textAlign: TextAlign.center,
                          ),
                        ),
                        underline: Divider(thickness: 0,),
                        
                        items: ["house","apartment"].map( (e) => DropdownMenuItem(
                        child: Text("$e"), value: e,)).toList(), 
                      onChanged: (val){
                        setState(() {
                          properttype=val;
                        });
                        
                      
                      },
                      value: properttype,
                      
                      ),
                                        ),
                    

                  ],
                )
               
              
              ),
              Container(height: 10,),
               Wrap(
              children: [
                Form(
                  key: formstate3,
                  child:
                 Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                       color: const Color.fromARGB(144, 245, 245, 245),
                      borderRadius: BorderRadius.circular(10),
                       border: Border.all(color: Colors.blueGrey)
                    ),
                     width: 150,
                    height: 100,
                   
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        Column(
                          children: [
                             Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Icon(Icons.bed_rounded,color: Colors.blueGrey,size: 50,)),
                        Container(
                         
                          width: 40,
                          height: 40,
                          child: TextFormField(
                           
                           
                            
                            validator: (value){
                              if(value!.isEmpty){
                                return "This field is reqyired";
                              }else{
                                return null;
                              }
                          
                            },
                            onSaved: (val){
                              bednum= int.parse(val!);
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                               fillColor: Colors.white,
                              filled: true,
                              hintText: "1",
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                          ],

                        ),
                        Container(width: 30,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Container(
                               padding: EdgeInsets.only(bottom: 5),
                              child: Icon(Icons.chair_rounded,color: Colors.blueGrey,size: 50,)),
                        Container(
                         
                          width: 40,
                          height: 40,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                           
                            validator: (value){
                              if(value!.isEmpty){
                                return "This field is reqyired";
                              }
                              else{
                                return null;
                              }
                          
                            },
                            onSaved: (val){
                              levnum= int.parse(val!);
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                               fillColor: Colors.white,
                              filled: true,
                              hintText: "1",
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                          ],
                        )

                      ],
                    ),
                   

                  )

                 
                    ],
                  ),
                
                 ),

              
                  Container(width: 10,),
                  Form(
                    key: form4,
                    
                    child:
                   Stack(
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
                              child: Icon(Icons.bathtub,color: Colors.blueGrey,size: 50,)),
                        Container(
                         
                          width: 40,
                          height: 40,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            
                            validator: (value){
                              if(value!.isEmpty){
                                return "This field is reqyired";
                              }else{
                                return null;
                              }
                          
                            },
                            onSaved: (val){
                              bathnum= int.parse(val!);
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                               fillColor: Colors.white,
                              filled: true,
                              hintText: "1",
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                     
                      ],
                    ),
                   

                  )

                 
                    ],
                  ),
                  
                   ),
                  
                  Container(width: 10,),
                  Form(
                    key: formstate5,
                    
                    child:
                  Stack(
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
                              child: Icon(Icons.garage,color: Colors.blueGrey,size: 50,)),
                        Container(
                         
                          width: 40,
                          height: 40,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            
                            validator: (value){
                              if(value!.isEmpty){
                                return "This field is reqyired";
                              }else{
                                return null;
                              }
                          
                            },
                            onSaved: (val){
                              garnum= int.parse(val!);
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                               fillColor: Colors.white,
                              filled: true,
                              hintText: "1",
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                              border: OutlineInputBorder(
                                 borderSide: BorderSide(color: Colors.blueGrey,width: 1)
                              ),
                            ),
                          ),
                        ),
                     

                      ],
                    ),
                   

                  )

                 
                    ],
                  ),
                  
                   ),
                   Container(height: 10,),
                  Form(
                    key: formstate6,
                    
                    child:
                  Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                       color: const Color.fromARGB(144, 245, 245, 245),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blueGrey)
                    ),
                     width: 110,
                    height: 100,
                   
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        
                          
                             Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Icon(Icons.zoom_out_map,color: Colors.blueGrey,size: 50,)),
                        Container(
                          decoration: BoxDecoration(
                       color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10),
                      //border: Border.all(color: Colors.blueGrey)
                    ),
                         
                          width: 100,
                          height: 40,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            
                            validator: (value){
                              if(value!.isEmpty){
                                return "This field is reqyired";
                              }else{
                                return null;
                              }
                          
                            },
                            onSaved: (val){
                              are= double.parse(val!);
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                               fillColor: Colors.white,
                              filled: true,
                              hintText: "1000m2",
                              //prefixText: "m2",
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                              border: OutlineInputBorder(
                              //  borderSide: BorderSide(color: Colors.blueGrey,width: 1)
                              ),
                            ),
                          ),
                        ),
                        

                      ],
                    ),
                   

                  )

                 
                    ],
                  ),
                  
                   ),
                   Container(width: 10,),
                  Form(
                    key: formstate7,
                    
                    child:
                  Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                       color: const Color.fromARGB(144, 245, 245, 245),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blueGrey)
                    ),
                     width: 110,
                    height: 100,
                   
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        
                          
                             Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Icon(Icons.add_location_alt_sharp,color: Colors.blueGrey,size: 50,)),
                        Container(
                          decoration: BoxDecoration(
                       color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10),
                      //border: Border.all(color: Colors.blueGrey)
                    ),
                         
                          width: 100,
                          height: 40,
                          child: TextFormField(
                            
                            textAlign: TextAlign.center,
                            
                            validator: (value){
                              if(value!.isEmpty){
                                return "This field is reqyired";
                              }else{
                                return null;
                              }
                          
                            },
                            onSaved: (val){
                              loc= val!;
                            },
                            keyboardType: TextInputType.url,
                            decoration: InputDecoration(
                              
                              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                               fillColor: Colors.white,
                              filled: true,
                              hintText: "Link",
                              //prefixText: "m2",
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                              border: OutlineInputBorder(
                              //  borderSide: BorderSide(color: Colors.blueGrey,width: 1)
                              ),
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                   

                  )

                 
                    ],
                  ),
                  
                   ),
                   Container(width: 10,),
                  Form(
                    key: formstate8,
                    
                    child:
                  Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                       color: const Color.fromARGB(144, 245, 245, 245),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blueGrey)
                    ),
                     width: 120,
                    height: 100,
                   
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        
                          
                             Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Icon(Icons.date_range_outlined,color: Colors.blueGrey,size: 50,)),
                        Container(
                          decoration: BoxDecoration(
                       color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10),
                      //border: Border.all(color: Colors.blueGrey)
                    ),
                         
                          width: 110,
                          height: 40,
                          child: TextFormField(
                            controller: datecontroller,
                            readOnly: true,
                            onTap: (){
                              pickDate();

                            },
                            
                            textAlign: TextAlign.center,
                            
                            validator: (value){
                              if(value!.isEmpty){
                                return "This field is reqyired";
                              }else{
                                return null;
                              }
                          
                            },
                            onSaved: (val){
                              datetime= val!;
                            },
                            keyboardType: TextInputType.url,
                            decoration: InputDecoration(
                              
                              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                               fillColor: Colors.white,
                              filled: true,
                              hintText: "20/6/2016",
                              //prefixText: "m2",
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                              border: OutlineInputBorder(
                              //  borderSide: BorderSide(color: Colors.blueGrey,width: 1)
                              ),
                            ),
                          ),
                        ),
                       

                      ],
                    ),
                   

                  )

                 
                    ],
                  ),
                  
                   ),
                  
                    ],
                  ),
                  if(properttype=="house")
                  Stack(
                    children: [
                       Container(

                    width: 400,
                    height: 100,

                    child: Row(
                      children: [
                        TextField(
                          readOnly: true,
                          
                          textAlign:TextAlign.start,
                          decoration: InputDecoration(
                            
                             hintText:"Parcel information document",
                             hintStyle: TextStyle(color:Colors.grey[300],fontSize: 20),
                            border: OutlineInputBorder(
                              
                             
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.blueGrey)
                            )
                          ),
                        ),
                        Container(width: 10,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.file_copy_outlined,size: 30,color: Colors.blueGrey,),)
                      ],
                    ),
                  ),
                      
                    ],

                  ), 
                   

                  
                  Container(height: 20,),
                  Container(
                    width: 400,
                    height: 100,
                    child: TextField(
                      maxLines: 10,
                      minLines: 1,
                      textAlign:TextAlign.start,
                      decoration: InputDecoration(
                        
                         hintText:"Text description...",
                         hintStyle: TextStyle(color:Colors.grey[300],fontSize: 20),
                        border: OutlineInputBorder(
                          
                         
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blueGrey)
                        )
                      ),
                    ),
                  ),
                    SizedBox(height: 50,),

         Container(
            
           
            margin: EdgeInsets.only(left: 80,right: 80),
            
            child: 
          MaterialButton(
            
            padding: EdgeInsets.all(10),
            onPressed: (){
              prop.addAll([City,bednum,price,levnum,are,garnum,bathnum,properttype,propertystate,loc,datetime, state]);
              if(
                formstate1.currentState!.validate()&&
                formstate2.currentState!.validate()){
                    Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> realestate(items: [City,bednum,price,levnum,are,garnum,bathnum,properttype,propertystate,loc,datetime, state],))
                );
                }
                 if(
                formstate3.currentState!.validate()&&
                form4.currentState!.validate()){
                    Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> realestate(items: [City,bednum,price,levnum,are,garnum,bathnum,properttype,propertystate,loc,datetime, state],))
                );
                }
                 if(
                formstate5.currentState!.validate()&&
                formstate6.currentState!.validate()){
                    Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> realestate(items:[ City,bednum,price,levnum,are,garnum,bathnum,properttype,propertystate,loc,datetime, state],))
                );
                }
                 if(
                formstate7.currentState!.validate()&&
                formstate8.currentState!.validate()){
                    Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> realestate(items: [City,bednum,price,levnum,are,garnum,bathnum,properttype,propertystate,loc,datetime, state],))
                );
                }
                
              },
              
            
          color:  Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
            child:  Text("Done",style: TextStyle(color: Colors.white,fontSize: 16),),
          )
          ),

            ],
            
          )
        ]
         
      )
  );
 }
}