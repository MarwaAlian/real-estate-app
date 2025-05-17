import 'package:flutter/material.dart';
import 'package:fluttercoursenew/HomePage.dart';
import 'package:fluttercoursenew/Savedpage.dart';
import 'package:fluttercoursenew/view/screen/customer/searchresultamman.dart';

class Searchpage2 extends StatefulWidget {

  const Searchpage2({super.key});

  @override
  State<Searchpage2> createState() => _Searchpage2State();
}

class _Searchpage2State extends State<Searchpage2> {
  
  List country=["Amman","Karak","Ma’an","Madaba",
  "Tafelah","Aqaba","Zarqa","Ajloun","Jerash","Irbid","Balqa","Mafraq"];
  List cityAmman=["Shafabdran"," Khalda ","Abdoun","Shafabdran","Abu Nusair","Na'ur","Suwailih"];

  TextEditingController search =TextEditingController();
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

      // appBar: AppBar(title: Text("") ,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 370,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: TextField(
                controller: search,
                decoration: InputDecoration(
                  hintText: "Location,house or apartment",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: cityAmman.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 50,
                mainAxisSpacing: 20,
                childAspectRatio: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    if(i==0){
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => searchresultamman()),
                    );
                   
                    }
                    
                  },
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      width: 40,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        cityAmman[i],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}