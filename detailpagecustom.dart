import 'package:flutter/material.dart';
import 'package:fluttercoursenew/view/screen/customer/Bookpage.dart';
import 'package:fluttercoursenew/view/screen/customer/Buypage.dart';
import 'package:fluttercoursenew/view/screen/customer/Chatpage.dart';
import 'package:fluttercoursenew/view/screen/customer/Savepage.dart';

class detailpagecustom extends StatelessWidget {
  detailpagecustom({super.key});

  List homedetails = [
    "images/m2.0.jpeg",
    "images/m2.1.jpeg",
    "images/m2.2.jpeg",
    "images/m2.3.jpeg",
    "images/m2.4.jpeg",
    "images/m2.5.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("DetailHome")),
      body: ListView(
       // physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
          padding: const EdgeInsets.all(10),
          children: [
                    Column(
            children: [
              Container(
                //padding: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(54, 170, 170, 170),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blueGrey, width: 1),
                      ),
                      child: PageView.builder(
                        onPageChanged: (value) {},
                        itemCount: homedetails.length,
                        itemBuilder: (context, i) {
                          return Image.asset(homedetails[i], fit: BoxFit.cover);
                        },
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        // alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Savepage()));
                          },
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    homedetails.length,
                    (index) => AnimatedContainer(
                      margin: EdgeInsets.only(right: 5),
                      duration: Duration(milliseconds: 900),
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          //alignment: Alignment.bottomRight,
                          width: 250,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Text(
                            " Amman,Abdoun",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          padding: EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 15,
                          ),
                          child: Icon(Icons.location_on, size: 30),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right: 6),
                      //alignment: Alignment.bottomRight,
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        " Sale",
                        style: TextStyle(color: Colors.black, fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    //alignment: Alignment.bottomRight,
                    width: 250,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text(
                      "120.000",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 10, top: 5),
                    //alignment: Alignment.bottomRight,
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text(
                      " House",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Container(height: 10),
              Wrap(
                
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueGrey),
                        ),
                        width: 150,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Icon(
                                    Icons.bed_rounded,
                                    color: Colors.blueGrey,
                                    size: 50,
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: TextField(
                                    readOnly: true,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 5,
                                        horizontal: 5,
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,
                                      hintText: "5",
                                      hintStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(width: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Icon(
                                    Icons.chair_rounded,
                                    color: Colors.blueGrey,
                                    size: 50,
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: TextField(
                                    readOnly: true,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 5,
                                        horizontal: 5,
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,
                                      hintText: "4",
                                      hintStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(width: 10),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueGrey),
                        ),
                        width: 90,
                        height: 100,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Icon(
                                Icons.bathtub,
                                color: Colors.blueGrey,
                                size: 50,
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              child: TextField(
                                readOnly: true,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: "6",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(width: 10),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueGrey),
                        ),
                        width: 90,
                        height: 100,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Icon(
                                Icons.garage,
                                color: Colors.blueGrey,
                                size: 50,
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              child: TextField(
                                readOnly: true,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: "3",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                     Container(height: 10),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueGrey),
                        ),
                        width: 110,
                        height: 100,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Icon(
                                Icons.zoom_out_map,
                                color: Colors.blueGrey,
                                size: 50,
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              child: TextField(
                                readOnly: true,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: "2500",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                   Container(height: 10),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueGrey),
                        ),
                        width: 110,
                        height: 100,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Icon(
                                Icons.add_location_alt_sharp,
                                color: Colors.blueGrey,
                                size: 50,
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              child: TextField(
                                readOnly: true,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: "link",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                   Container(height: 10),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueGrey),
                        ),
                        width: 110,
                        height: 100,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Icon(
                                Icons.date_range_outlined,
                                color: Colors.blueGrey,
                                size: 50,
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              child: TextField(
                                readOnly: true,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: "20/6/2016",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ],
              ),
              Container(height: 20,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blueGrey,width: 2)
                ),
               
                width: 400,
                height: 150,
                child: Stack(
                  children: [
                        Stack(
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                           Container(
                            margin: EdgeInsets.only(bottom: 70, left: 5,top: 10),
                        //alignment: Alignment.topLeft,
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(60)
                        ),),
                        Container(
                          padding: EdgeInsets.only(bottom: 40,left:7,top: 10),
                          child: Icon(Icons.person,size: 50,color: Colors.grey[300],)),

                                ],
                              ),
                              Container(
                                margin:EdgeInsets.only(bottom: 85,left: 5),
                                child: Text("Marwa alian",style: TextStyle(fontSize: 20),)),
                                SizedBox(height: 10,),
                               
                              Container(width: 20,),
                              Container(
                                margin: EdgeInsets.only(bottom: 85,left: 150),
                                child: IconButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Chatpage()));
                                  
                                }, icon: Icon(Icons.chat_rounded))),
                                SizedBox(height: 10,),
                               
                           
                        
                        
                            ],
                          ),
                            Container(
                                  margin: EdgeInsets.only(top: 60,left: 10),
                                  child: Text("Text description... ",style: TextStyle(color: Colors.grey,fontSize: 20),),
                                ),
                        ],
                        ),
                       
                    
                  ],
                ),
              ),
              SizedBox(height: 20,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blueGrey,width: 2),),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookpage()));
                    }, child: Text("Book",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20),))
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 150,
                    height: 50,
                    decoration:BoxDecoration(color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blueGrey,width: 2),), 
                     child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Buypage()));
                     }, child: Text("Buy",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20),))
                  )
                ],
               )
              
                  
              

            ],
          ),
          ]
   
        
      ),
    );
  }
}
