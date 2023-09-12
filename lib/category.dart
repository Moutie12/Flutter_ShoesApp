import 'package:flutter/material.dart';
import 'package:foodapp/pageview.dart';
import 'package:foodapp/puma_products.dart';
import 'package:foodapp/shop.dart';
import 'package:foodapp/order_page.dart';
import 'package:foodapp/social.dart';

import 'adidas_products.dart';
import 'all_products.dart';
import 'face_app.dart';
import 'nike_products.dart';

class Category extends StatefulWidget{
  const Category({Key? key}) : super(key:key);

  @override
  State<Category> createState() => RootCreateState();
}

class RootCreateState extends State<Category> {
  late bool pp = true ;
  late bool nike = false ;
  late bool puma = false ;
  late bool adidas = false ;
  late int indexfor = 0 ;
   int index_order = 0 ;
  @override
  Widget build(BuildContext context){
    late  int index1 = 1 ;
    return  Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index1 ,
            onTap: (int index) {
              setState(() {
                index1 = index ;
                switch(index1){
                  case 0:
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                      return const Face();
                    }));
                  case 2:
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                      return  Shop();
                    }));
                  case 3:
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                      return const Social();
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
      body:  Column(
        children: [
          Container(
            margin:  EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.6,top: 40),
            child: const Text("Popular Brands",style:
            TextStyle(
                fontFamily: 'Nunito',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18
            ),),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pp = true ;
                      nike = false ;
                      puma = false ;
                      adidas = false ;
                    });
                  },
                  child: Container(
                    margin : const EdgeInsets.only(top: 10,left: 20),
                    decoration : BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: pp == true ?  Colors.red : const Color(0xFFE8E8E8),
                    ),
                    width: 80,
                    height: 30,
                    child:  const Center(
                      child: Text("All",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                        ),),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pp = false ;
                      nike = true ;
                      puma = false ;
                      adidas = false ;
                    });
                  },
                  child: Container(
                    margin : const EdgeInsets.only(top: 10,left: 20),
                    decoration : BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: nike == true ?  Colors.red : const Color(0xFFE8E8E8),
                    ),
                    width: 80,
                    height: 30,
                    child:  const Center(
                      child: Text("Nike",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black ,
                        ),),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pp = false ;
                      nike = false ;
                      puma = false ;
                      adidas = true ;
                    });
                  },
                  child: Container(
                    margin : const EdgeInsets.only(top: 10,left: 20),
                    decoration : BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: adidas == true ?  Colors.red : const Color(0xFFE8E8E8),
                    ),
                    width: 80,
                    height: 30,
                    child:  const Center(
                      child: Text("Adidas ",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color:  Colors.black  ,
                        ),),
                    ),
                  ),
                ),
                Container(
                  margin : const EdgeInsets.only(top: 10,left: 20),
                  decoration : BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFE8E8E8),
                  ),
                  width: 80,
                  height: 30,
                  child:  const Center(
                    child: Text("Jordan",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),
                  ),
                ),
                GestureDetector(
                onTap: () {
                  setState(() {
                  pp = false ;
                  nike = false ;
                  puma = true ;
                  adidas = false ;
                  });
                   },
                  child: Container(
                    margin : const EdgeInsets.only(top: 10,left: 20),
                    decoration : BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: puma == true ?  Colors.red : const Color(0xFFE8E8E8),
                    ),
                    width: 80,
                    height: 30,
                    child:  const Center(
                      child: Text("Puma",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black ,
                        ),),
                    ),
                  ),
                )
              ],
            ),
          ),
          if(pp)
            Expanded(child: SingleChildScrollView(
              child: Wrap(
                  children: [
                    for (var shoe in alldata)
                      GestureDetector(
                        onTap : () {
                          setState(() {
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                              return  Order_Page(index: index_order++,name: shoe.name,image: shoe.image,prix: shoe.prix,) ;
                            }));
                          });
                        },
                        child: Flexible(
                            flex:shoe.id,child: Container(
                          margin:  EdgeInsets.only(left: shoe.id % 2 == 0 ? 20 : 0
                              ,top: 20),
                          decoration : BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFE8E8E8),
                          ),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 170,
                          child: Column(
                            children: [
                              Container(
                                margin : const EdgeInsets.only(top: 5),
                                child:  Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: Text(shoe.prix,style:
                                      const TextStyle(
                                        color: Colors.red,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 70),
                                      child: const Icon(Icons.shopping_cart_outlined),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(shoe.image,height: 100,width: 100,),
                              Text(shoe.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17
                                ),),
                            ],
                          ),
                        )),
                      ),
                  ]
              ),
            )),
          if(nike)
            Expanded(child: SingleChildScrollView(
              child: Wrap(
                  children: [
                    for (var nn in nikedata)
                      GestureDetector(
                        onTap : () {
                          setState(() {
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                              return  Order_Page(index: index_order++,name: nn.name,image: nn.image,prix: nn.prix,) ;
                            }));
                          });
                        },
                        child: Flexible(
                            flex: nn.id,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: nn.id % 2 == 0 ? 20 : 0,
                                top: 20,
                              ),
                              decoration : BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFE8E8E8),
                              ),
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 170,
                              child: Column(
                                children: [
                                  Container(
                                    margin : const EdgeInsets.only(top: 5),
                                    child:  Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(left: 10),
                                          child: Text(nn.prix,style:
                                          const TextStyle(
                                            color: Colors.red,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(left: 70),
                                          child: const Icon(Icons.shopping_cart_outlined),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image.asset(nn.image,height: 100,width: 100,),
                                  Text(nn.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17
                                    ),),
                                ],
                              ),
                            )),
                      ),
                  ]
              ),
            )),
          if(puma)
            Expanded(child: SingleChildScrollView(
              child: Wrap(
                  children: [
                    for (var nn in pumadata)
                      GestureDetector(
                        onTap : () {
                          setState(() {
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                              return  Order_Page(index: index_order++,name: nn.name,image: nn.image,prix: nn.prix,) ;
                            }));
                          });
                        }
                        ,child: Flexible(
                            flex: nn.id,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: nn.id % 2 == 0 ? 20 : 0,
                                top: 20,
                              ),
                              decoration : BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFE8E8E8),
                              ),
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 170,
                              child: Column(
                                children: [
                                  Container(
                                    margin : const EdgeInsets.only(top: 5),
                                    child:  Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(left: 10),
                                          child: Text(nn.prix,style:
                                          const TextStyle(
                                            color: Colors.red,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(left: 70),
                                          child: const Icon(Icons.shopping_cart_outlined),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image.asset(nn.image,height: 100,width: 100,),
                                  Text(nn.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17
                                    ),),
                                ],
                              ),
                            )),
                      ),
                  ]
              ),
            )),
          if(adidas)
            Expanded(child: SingleChildScrollView(
              child: Wrap(
                  children: [
                    for (var nn in adidasdata)
                      GestureDetector(
                        onTap : () {
                          setState(() {
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                              return  Order_Page(index: index_order++,name: nn.name,image: nn.image,prix: nn.prix,) ;
                            }));
                          });
                        }
                        ,child: Flexible(
                            flex: nn.id,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: nn.id % 2 == 0 ? 20 : 0,
                                top: 20,
                              ),
                              decoration : BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFE8E8E8),
                              ),
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 170,
                              child: Column(
                                children: [
                                  Container(
                                    margin : const EdgeInsets.only(top: 5),
                                    child:  Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(left: 10),
                                          child: Text(nn.prix,style:
                                          const TextStyle(
                                            color: Colors.red,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(left: 70),
                                          child: const Icon(Icons.shopping_cart_outlined),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image.asset(nn.image,height: 100,width: 100,),
                                  Text(nn.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17
                                    ),),
                                ],
                              ),
                            )),
                      ),
                  ]
              ),
            ))

        ],
      ),
    );
  }
}