import 'package:flutter/material.dart';
import 'package:fluttercoursenew/view/screen/seller/Detailpage.dart';
import 'package:fluttercoursenew/HomePage.dart';
import 'package:fluttercoursenew/view/screen/seller/IDinfo.dart';


class realestate extends StatefulWidget {
  final List items;
    const realestate({super.key,  required this.items});
  
  State<realestate> createState() => _realestatestate();
}
class _realestatestate extends State<realestate>{
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
          Container(
            child: Text("My real estate status",style: TextStyle(color: Colors.blueGrey,
            fontSize:25,
            fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            ),
          ),
          GridView.builder(
           // padding: EdgeInsets.all(10),
            itemCount: items.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 25,mainAxisExtent: 250), 
            itemBuilder: (context,i){
              return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => Detailpage ()));
            },
              
               child: Card(
                color: Colors.white,
               
                child:Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Stack(
                      children: [
                        Container(
                      width: 300,
                      height: 150,
                      color: Colors.white,
                     // padding: EdgeInsets.all(20),
                      child: Image.asset(items[i]["image"], height: 100,fit: BoxFit.fill,),
                        ),
                         if(items[i]["state2"]== "sold")
                        Positioned(
                          top: 40,
                        
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 60.5,vertical: 5),
                            //margin: EdgeInsets.all(10),
                          // padding: EdgeInsets.all(30),
                            // ignore: deprecated_member_use
                            color: const Color.fromARGB(131, 0, 0, 0),
                            child: Text("Sold", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                          ),
                        ),
                      ],
                     
                    
                      
                      ),
                    
                       Text(items[i]["price"],style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,),),
                     Text(items[i]["type"],style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,),),
                      Text(items[i]["state"],style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,),),
                      Text(items[i]["location"],style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,),),
                  
                  ],
                ),
              ),
              );
            }),
            Container(height: 80,),
                      Container(
            
                       width: 150,
            margin: EdgeInsets.only(left: 150),
            
            child: 
          MaterialButton(
          
            padding: EdgeInsets.all(8),
            onPressed: (){
               Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context)=>Idinfo())
               );
            },
          color:  Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
            child: 
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.add_circle_sharp ,color: Colors.white,),
                Container(width: 5,),
                Text("Add new proprety",style: TextStyle(color: Colors.white,),),



              ]
             
            )
          )
          ),

                     

                       
                       
                     


        ],
      
      )
  );
 }
}

