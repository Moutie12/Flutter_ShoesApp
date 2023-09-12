import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/shop.dart';

import 'category.dart';
import 'face_app.dart';

class Social extends StatefulWidget {
  const Social({Key?key}) : super(key:key);

  
  @override
  State<Social> createState()=> RootSocial() ;
}
class RootSocial extends State<Social> {
  late  int index1 = 3 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index1 ,
          onTap: (int index) {
            setState(() {
              index1 = index ;
              switch(index1){
                case 1 :
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return const Category();
                  }));
                case 2:
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return const Shop();
                  }));
                case 0:
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return const Face();
                  }));
              }
            });
          },
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.category),label: "Category"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Shops"),
            BottomNavigationBarItem(icon: Icon(Icons.computer),label: "Social Media")
          ]),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: const Text("social media",style: TextStyle(
              fontSize: 30,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),),
          ),
          Wrap(
            children: [
              Flexible(flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 50,left: 10),
                    height: 200,width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Colors.black54,
                          width: 2.0
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 12),
                          child: Image.asset('assets/social/fb.png',width: 90,height: 80,),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 12),
                          child: const Text("Facebook",style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20,right: 20,top: 15),
                          height: 40,
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              "Go",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Flexible(flex: 2,
                  child: Container(
                    margin: const EdgeInsets.only(top: 50,left: 18),
                    height: 200,width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Colors.black54,
                          width: 2.0
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 12),
                          child: Image.asset('assets/social/instagram.png',width: 90,height: 80,),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 12),
                          child: const Text("Instagram",style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20,right: 20,top: 15),
                          height: 40,
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              "Go",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Flexible(flex: 3,
                  child: Container(
                    margin: const EdgeInsets.only(top: 30,left: 10),
                    height: 200,width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Colors.black54,
                          width: 2.0
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 12),
                          child: Image.asset('assets/social/github.png',width: 90,height: 80,),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 12),
                          child: const Text("Github",style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20,right: 20,top: 15),
                          height: 40,
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              "Go",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Flexible(flex: 4,
                  child: Container(
                    margin: const EdgeInsets.only(top: 30,left: 18),
                    height: 200,width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black54,
                          width: 2.0
                      ),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 12),
                          child: Image.asset('assets/social/linkedin.png',width: 90,height: 80,),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 12),
                          child: const Text("linkedIn",style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20,right: 20,top: 15),
                          height: 40,
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              "Go",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}