import 'package:flutter/material.dart';
import 'package:foodapp/shoes_products.dart';
import 'package:foodapp/shop.dart';
import 'package:foodapp/social.dart';

import 'best_sales.dart';
import 'category.dart';

class Face extends StatefulWidget {
  const Face({Key? key}) : super(key: key);

  @override
  State<Face> createState() => Rootface() ;
}
class Rootface extends State<Face> {
  late  int index1 = 0 ;
  @override
  void initState() {
    super.initState();

    // Use Future.delayed with a small delay to show the dialog after the widget has built.
    Future.delayed(Duration.zero, () {
      afficher(context);
    });
  }
  void afficher(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Image.asset(
            'assets/images/offre.png', // Updated asset path
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.5,
          ),
        );
      },
    );
  }

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
                    return  const Shop();
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              width: MediaQuery.of(context).size.width ,
              height: 50,
              color: const Color(0xFFBDBBBB),
              child: const Center(
                child: Text("Shoes App",style:
                TextStyle(
                    color: Colors.black,
                    fontSize: 24
                ),),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 0),
              padding:  const EdgeInsets.symmetric(vertical: 1,horizontal:10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 5.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin:  EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.6, top: 10),
              child: const Text("Special Offer",style:
              TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18
              ),),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0,bottom: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(
                  'assets/images/off.jpg',
                  width: MediaQuery.of(context).size.width * 0.95, // Adjust the width to make the image larger
                  height: 170,
                ),
              ),
            ),
            Container(
              margin:  EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.6,
                  bottom: 10,top: 12),
              child: const Text("Popular Shoes",style:
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
                  for (var shoe in shoesdata)
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
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
                    )

                ],
              ),
            ),
            Container(
              margin:  EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.45,
                  bottom: 0,top: 15),
              child: const Text("Most Popular Brands",style:
              TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18
              ),),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset('assets/logo/adidas.png',width: 80,height: 80,) ,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 2),
                        child: Image.asset('assets/logo/nike.png',width: 80,height: 80,) ,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 0),
                        child: Image.asset('assets/logo/puma.png',width: 80,height: 80,) ,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 2),
                        child: Image.asset('assets/logo/jordan.png',width: 60,height: 60,) ,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 6),
                        child: Image.asset('assets/logo/anta.png',width: 60,height: 60,) ,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 6),
                        child: Image.asset('assets/logo/reebok.png',width: 60,height: 60,) ,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 0,left: 6),
                        child: Image.asset('assets/logo/unter.png',width: 60,height: 60,) ,
                      ),
                    ],
                  ),
                )
            ),
            Container(
              margin:  EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.55,
                  bottom: 10,top: 12),
              child: const Text("Coming Articles",style:
              TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18
              ),),
            ),
            Wrap(
              children: [
                Flexible(flex: 1,child:Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFE8E8E8),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: const EdgeInsets.only(left: 8),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text("Adidas GALAXY 6",style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: 'Rubik',
                        ),),
                      ),
                      Image.asset('assets/offers/aa1.png',width: MediaQuery.of(context).size.width * 0.5,height: 150,),
                      const Text('18\$',style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontFamily: 'Rubik',
                      ),),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(7)
                        ),
                        child: const Text("Select",style: TextStyle(
                          fontSize: 17,
                          color: Colors.white
                        ),),
                      ),
                    ],
                  ),
                ) ),
                Flexible(flex: 2,child:Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFE8E8E8),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: const EdgeInsets.only(left: 10,right: 8),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text("Adidas RUN 70s",style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: 'Rubik',
                        ),),
                      ),
                      Image.asset('assets/offers/aa2.png',width: MediaQuery.of(context).size.width * 0.5,height: 150,),
                      const Text('45\$',style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontFamily: 'Rubik',
                      ),),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(7)
                        ),
                        child: const Text("Select",style: TextStyle(
                            fontSize: 17,
                            color: Colors.white
                        ),),
                      ),
                    ],
                  ),
                ) ),
                Flexible(flex: 3,child:Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFE8E8E8),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: const EdgeInsets.only(left: 8,top: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text("Geox CLAUDIO",style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: 'Rubik',
                        ),),
                      ),
                      Image.asset('assets/offers/aa3.png',width: MediaQuery.of(context).size.width * 0.5,height: 150,),
                      const Text('55\$',style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontFamily: 'Rubik',
                      ),),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(7)
                        ),
                        child: const Text("Select",style: TextStyle(
                            fontSize: 17,
                            color: Colors.white
                        ),),
                      ),
                    ],
                  ),
                ) ),
                Flexible(flex: 4,child:Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFE8E8E8),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: const EdgeInsets.only(left: 10,right: 8,top: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text("Casual SNEAKERS",style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: 'Rubik',
                        ),),
                      ),
                      Image.asset('assets/offers/aa4.png',width: MediaQuery.of(context).size.width * 0.5,height: 150,),
                      const Text('66\$',style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontFamily: 'Rubik',
                      ),),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(7)
                        ),
                        child: const Text("Select",style: TextStyle(
                            fontSize: 17,
                            color: Colors.white
                        ),),
                      ),
                    ],
                  ),
                ) ),

              ],
            ),
            Container(
              margin:  EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.65,
                  bottom: 10,top: 12),
              child: const Text("Best Sales",style:
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
                  for (var shoe in bestsalesdata)
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
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
                    )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
