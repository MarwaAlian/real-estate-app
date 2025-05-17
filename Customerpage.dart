
import 'package:flutter/material.dart';
import 'package:fluttercoursenew/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:fluttercoursenew/HomePage.dart';
import 'package:fluttercoursenew/view/screen/customer/Searchpage.dart';
import 'package:fluttercoursenew/view/screen/seller/Detailpage.dart';
import 'package:fluttercoursenew/Savedpage.dart';

class Customerpage extends StatefulWidget {
    const Customerpage({super.key});
    @override
  State<Customerpage> createState() =>_Customerpagestate();

    

}
class _Customerpagestate extends State<Customerpage>{
  TextEditingController search =TextEditingController();
  
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
    }

  ];
  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
       // Navigator.push(context, MaterialPageRoute(builder: (_) => Savedpage()));
       scaffoldkey.currentState!.openDrawer();
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
        break;
        case 2:
        Navigator.push(context, MaterialPageRoute(builder: (_) => Savedpage()));
        break;
     
    }
  }
  GlobalKey <ScaffoldState> scaffoldkey=GlobalKey();
  
@override
  Widget build(BuildContext context) {
    return Scaffold(
    
      key: scaffoldkey,
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val){
          setState(() {
            _onItemTapped(context, val);
          });
        },
        backgroundColor: Colors.blueGrey, 
        items: [
           BottomNavigationBarItem(icon: Icon(Icons.menu_outlined),
              label: "Menu"),
         BottomNavigationBarItem(icon: Icon(Icons.home,),
              label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
              label: "Save"),
      ]),
      body: 
      Container(
        padding: EdgeInsets.all(10),
        child: ListView(
         // padding: EdgeInsets.all(10),
          children: [
             
                     Container(
                      width: 250,
                      height: 30,
                     
                       child: TextField(
                       onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Searchpage()));
                       
                        },
                        
                        controller: search,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: const Color.fromARGB(85, 158, 158, 158),)
                          ),
                          hintText: "Location,house or apartment",
                          hintStyle: TextStyle(color: Colors.grey[300],fontSize: 20),
                          prefixIcon: Icon(Icons.search,size: 30,)
                        ),
                                     ),
                     ),
                      GridView.builder(
                        padding: EdgeInsets.all(10),
                itemCount: items.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                crossAxisSpacing: 20,
                childAspectRatio: 2,
                mainAxisExtent: 25,
                mainAxisSpacing: 250
                ),
               itemBuilder: (context,i){
                    return InkWell(
                        onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => Detailpage ()));
              },
              child: Card(
                color: Colors.white,
                child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Stack(
                      children: [
                        Container(
                          width: 300,
                        height: 150,
                        color: Colors.white,
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
           
          ],
        
        ),
      )
      
        );
      
  }} 
  