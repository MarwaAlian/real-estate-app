import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttercoursenew/HomePage.dart';
import 'package:fluttercoursenew/view/screen/loginpage.dart';
import 'package:fluttercoursenew/view/widget/homedetails.dart';
import 'package:fluttercoursenew/view/screen/seller/realestate.dart';

//import 'package:fluttercoursenew/verificationpage.dart';

class Detailpage extends StatefulWidget {
  
 

    const  Detailpage({super.key });
    
      get typeprop => null;
  State< Detailpage> createState() => _Detailpagestatestate();
}
class _Detailpagestatestate extends State<Detailpage>{
 
   
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
  //var properttype;
  //var propertystate;
   var properttype;
  String City ="";  
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
 
TextEditingController  bedroom =TextEditingController();
TextEditingController  levingroom =TextEditingController();
TextEditingController  bathroom =TextEditingController();
TextEditingController  garage =TextEditingController();
TextEditingController  location =TextEditingController();
TextEditingController  date =TextEditingController();
TextEditingController  area =TextEditingController();

 List items=[
    { "image": "images/m3.jpeg",
       "price":" 75000 JD",
       "type":" House",
       "state":" sale",
       "state2":"Unsold",
       "location":" Amman,shafabdran"
    },
     { "image": "images/m4.jpeg",
       "price":" 1000 JD",
       "type":" House",
       "state":" rent",
       "state2":"Unsold",
       "location":" Amman,kalda"
    },
     { "image": "images/m2.jpeg",
       "price":" 120000 JD",
       "type":" House",
       "state":" sale",
       "state2":"sold",
       "location":" Amman,Abdoun"
    },
     { "image": "images/m6.jpeg",
       "price":" 400 JD",
       "type":" apartment",
       "state":" rent",
       "state2":"Unsold",
       "location":" Amman,Airport Street"
    },

  ];
  
  
  @override
 Widget build (BuildContext ontext){
  return Scaffold(
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
                    width: 400,
                    height: 160,
                     decoration: BoxDecoration(  color: const Color.fromARGB(54, 170, 170, 170),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blueGrey,width: 1)
                    ),
                    child: PageView.builder(
                      itemCount: items.length+1,
                      itemBuilder:(context,i){
                        if(i==items.length){
                        return IconButton(
                      onPressed: (){
                      }, icon: Icon(Icons.add_photo_alternate,size: 60,),
                   padding: EdgeInsets.only(top: 50,bottom: 10),
                   color: Colors.blueGrey,
                    );
                        }
                        return Image.asset(items[i]["image"]);
                      } ),                                      
                  ),
                 /* Center(
                    child: IconButton(
                    
                      onPressed: (){

                      }, icon: Icon(Icons.add_photo_alternate,size: 60,),
                   padding: EdgeInsets.only(top: 50,bottom: 10),
                   color: Colors.blueGrey,
                    ),
                  )*/
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
                      readOnly: true,
                      textAlign: TextAlign.center,
                      validator: (val){
                        if(val!.isEmpty){
                          return "This field is required";
                        };
                      },
                      //cursorWidth: 100,
                      //cursorHeight: 30,
                      
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blueGrey,width: 1)
                        ),
                        hintText: "$City" ,
                        hintStyle: TextStyle(color: Colors.black,fontSize: 19,
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
                    child: Text("$propertystate"),
                    /*child: DropdownButton(
                      hint: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(" Select ",style: TextStyle(color: Colors.grey,fontSize: 12),//textAlign: TextAlign.center,
                        ),
                      ),
                      underline: Divider(thickness: 0.0,),
                      
                      items: ["Sale","Rent"].map( (e) => DropdownMenuItem(
                      child: Text("$e"), value: e,)).toList(), 
                    onChanged: (val){
                      setState(() {
                        propertystate=val;
                      });
                    },
                    value: propertystate,
                    
                    ),*/
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
                  readOnly: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    //contentPadding: EdgeInsets.symmetric(horizontal: 110,vertical: 9),
                    contentPadding: EdgeInsets.only(top: 11,left: 40),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey,width: 1),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: "$price",
                    hintStyle: TextStyle(color: Colors.black,fontSize: 25),
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
                      child: Text("$properttype"),
                      /*child: DropdownButton(
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
                      
                      ),*/
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
                            controller: bedroom,
                            textAlign: TextAlign.center,
                            
                            validator: (value){
                              if(value!.isEmpty){
                                return "This field is reqyired";
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
                              hintText: "$bednum",
                              hintStyle: TextStyle(color: Colors.black,fontSize: 16),
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
                            controller: levingroom,
                            textAlign: TextAlign.center,
                           
                            validator: (value){
                              if(value!.isEmpty){
                                return "This field is reqyired";
                              }},
                            onSaved: (val){
                              levnum= int.parse(val!);
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                               fillColor: Colors.white,
                              filled: true,
                              hintText: "$levnum",
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                          ],) ], ), ) ],),
                
                    
                       ),
                       Container(width: 10,),
                       Form(
                        key: form4,
                        child:
                        homedetails(hinttext: "$bathnum",
                         mycontroller: bathroom,
                          icone:Icon(Icons.bathtub,color: Colors.blueGrey,size: 50,)  ,
                          keyboardtype: TextInputType.number, 
                          onsaved: (val) {  
                            bathnum= int.parse(val!);
                          },), ),
                          Container(width: 10,),
                           Form(
                        key: formstate5,
                        child:
                        homedetails(hinttext: "$garnum",
                         mycontroller: garage,
                          icone:Icon(Icons.garage,color: Colors.blueGrey,size: 50,)  ,
                          keyboardtype: TextInputType.number, 
                          onsaved: (val) {  
                            garnum= int.parse(val!);
                          },), ),
                          Container(height: 10,),
                          Form(
                        key: formstate6,
                        child:
                        homedetails(hinttext: "$are",
                         mycontroller: area,
                          icone:Icon(Icons.zoom_out_map,color: Colors.blueGrey,size: 50,)  ,
                          keyboardtype: TextInputType.number, 
                          onsaved: (val) {  
                            are = double.parse(val!);
                          },), ),
                          Container(height: 10,),
                          Form(
                        key: formstate7,
                        child:
                        homedetails(hinttext: "$loc",
                         mycontroller: location,
                          icone:Icon(Icons.add_location_alt_sharp,color: Colors.blueGrey,size: 50,)  ,
                          keyboardtype: TextInputType.number, 
                          onsaved: (val) {  
                            loc = val! ;
                          },), ),
                           Container(height: 10,),
                          Form(
                        key: formstate8,
                        child:
                        homedetails(hinttext: "$datetime",
                         mycontroller: date,
                          icone:Icon(Icons.date_range_outlined,color: Colors.blueGrey,size: 50,)  ,
                          keyboardtype: TextInputType.number, 
                          onsaved: (val) {  
                            datetime = val! ;
                          },), ),
                ],
              ),
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
              
               Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> realestate(items: [City,bednum,price,levnum,are,garnum,bathnum,properttype,propertystate,loc,datetime, state],))
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

        ],

      )
      
     
   

      );
      
  
 }
}
         