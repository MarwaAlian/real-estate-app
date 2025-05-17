import 'package:flutter/material.dart';
import 'package:fluttercoursenew/view/screen/customer/Searchpage.dart';
import 'package:fluttercoursenew/view/screen/seller/Detailpage.dart';

class searchresultamman extends StatefulWidget {
  const searchresultamman({super.key});

  @override
  State<searchresultamman> createState() => _searchresultammanState();
}

class _searchresultammanState extends State<searchresultamman> {
  List items=[
    { "image": "images/A1.png",
       "price":" 75000 JD",
       "type":" apartment",
       "state":" sale",
       "state2":"Unsold",
       "location":" Amman,shafabdran"
    },
     { "image": "images/A2.png",
       "price":" 80.000 JD",
       "type":" apartment",
       "state":" sale",
       "state2":"Unsold",
       "location":"Amman,shafabdran"
    },
     { "image": "images/A3.png",
       "price":" 500 JD",
       "type":" apartment",
       "state":" rent",
       "state2":"sold",
       "location":" Amman,shafabdran"
    },
     { "image": "images/A4.png",
       "price":" 55.000 JD",
       "type":" apartment",
       "state":" rent",
       "state2":"Unsold",
       "location":"Amman,shafabdran"
    },
     { "image": "images/A5.png",
       "price":" 50.000 JD",
       "type":" apartment",
       "state":" sale",
       "state2":"Unsold",
       "location":" Amman,shafabdran"
    },
     { "image": "images/A6.png",
       "price":" 500 JD",
       "type":" apartment",
       "state":" rent",
       "state2":"Unsold",
       "location":" Amman,shafabdran"
    },
     { "image": "images/A7.png",
       "price":" 120,000 JD",
       "type":" apartment",
       "state":" sale",
       "state2":"sold",
       "location":"Amman,shafabdran"
    },
    
     { "image": "images/A8.png",
       "price":" 150,000 JD",
       "type":" apartment",
       "state":" sale",
       "state2":"Unsold",
       "location":" Amman,shafabdran"
    }

  ];
  TextEditingController search=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
     Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 330,
                height: 50,
                child: TextField(
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Searchpage()));
                  },
                  controller: search,
                  keyboardType: TextInputType.text,
                   decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey,)
                              ),
                              hintText: "Location,house or apartment",
                              hintStyle: TextStyle(color: Colors.grey[300],fontSize: 20),
                              prefixIcon: Icon(Icons.search,size: 30,)
                            ),
                ),
              ),
             Container(width:8 ,),
              Container(child: IconButton(onPressed: (){
                       
              }, icon: Icon(Icons.tune,size:30,)))
            ],
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
     );
  }
}