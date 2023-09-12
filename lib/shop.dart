import 'package:flutter/material.dart';
import 'package:foodapp/ordre_clients.dart';
import 'package:foodapp/pageview.dart';
import 'package:foodapp/payments.dart';
import 'package:foodapp/social.dart';

import 'category.dart';
import 'face_app.dart';

class Shop extends StatefulWidget{
  const Shop({Key? key}) : super(key:key);

  @override
  State<Shop> createState() => RootShop();
}

class RootShop extends State<Shop> {
  late List<int> counts = [];
  late List<String> prix_produits = [];
  late  int index1 = 2 ;
  late  int total  = 0 ;
  void increment(int i) {
    setState(() {
      int newNumber = counts[i] + 1;
      counts[i] = newNumber;
      int total = int.parse(OrdreDataClients[i].prix) * newNumber;
      prix_produits[i] = total.toString();
      calcul_total(context) ;
    });
  }


  void decrement(int i) {
    setState(() {
      int newNumber = counts[i] - 1;
      counts[i] = newNumber;
      int total = int.parse(OrdreDataClients[i].prix) * newNumber;
      prix_produits[i] = total.toString();
      calcul_total(context) ;
    });
  }
  void calcul_total(BuildContext context) {
    setState(() {
      total = 0 ;
      for (var shoe in prix_produits){
         total = total + int.parse(shoe);
      }
    });
  }
  @override
  void initState() {
    super.initState();
    for (var remplir in OrdreDataClients) {
      counts.add(1);
      prix_produits.add(remplir.prix);
      calcul_total(context) ;
    }
  }
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: const Color(0xFFE5E2E2),
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
                case 1 :
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return const Category();
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
              margin: const EdgeInsets.only(top: 30),
              child:  const Center(
                child: Text("Vos Commandes :",style: TextStyle(
                    fontSize: 23,
                    fontFamily: 'Rubik'
                ),),
              ),
            ),
            Container(
              height:550,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    for (var shoe in OrdreDataClients)
                      Container(
                        margin: const EdgeInsets.only(top: 30,left: 10,right: 10),
                        padding: const EdgeInsets.symmetric(vertical:0,horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin : const EdgeInsets.only(left: 15,bottom: 5),
                                  child: Text(shoe.name,style: const TextStyle(
                                      fontSize: 20
                                  ),),
                                ),
                                Container(
                                  margin : const EdgeInsets.only(bottom: 5),
                                  child: Text(prix_produits[shoe.id],style: const TextStyle(
                                      fontFamily: 'Ubuntu',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),),
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () => decrement(shoe.id),
                                      child: Container(
                                        padding : const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                                        decoration:  BoxDecoration(
                                            color: Colors.pinkAccent,
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: const Text("-",style:
                                        TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white

                                        ),),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 10,right: 10),
                                      child: Text(counts[shoe.id].toString(),style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                    InkWell(
                                      onTap: () => increment(shoe.id),
                                      child: Container(
                                        padding : const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                                        decoration:  BoxDecoration(
                                            color: Colors.pinkAccent,
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: const Text("+",style:
                                        TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white

                                        ),),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 30),
                              child: Image.asset(shoe.image,width: 130,height: 120,),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 2),
              child: Row(
                children: [
                  Container(
                    width : MediaQuery.of(context).size.width * 0.35,
                    margin: const EdgeInsets.only(left: 5),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color : Colors.red,
                    ),
                    child:  Center(
                      child: Text("Total: ${total.toString()} \$",style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                        return MyHomePage() ;
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 20,right: 0,top: 20,bottom: 20),
                      height: 50,
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1A1A1A),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          "Process To payments",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}