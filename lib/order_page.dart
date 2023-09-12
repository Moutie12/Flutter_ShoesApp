import 'package:flutter/material.dart';
import 'package:foodapp/pop_up.dart';

import 'ordre_clients.dart';

class Order_Page extends StatefulWidget {
   Order_Page({Key?key,required this.index,required this.name,required this.image,required this.prix}) : super(key:key);
  final String prix ;
   final String name ;
   final String image ;
   final int index ;

  @override
  State<Order_Page> createState() => RootOrderPage() ;
}

class RootOrderPage extends State<Order_Page>
{
  void afficher(BuildContext context) {
     showDialog(context: context, builder: (BuildContext context) {
      return const Dialog(
        child: Popup(),
      );
    });
  }
  add_to_list_shop(String prix1, String image1, String name1) {
    setState(() {
      String sub_prix = prix1.substring(0,prix1.length-1);
      OrdreDataClients.add(Ordre_Clients(id: widget.index,
          prix: sub_prix,
          image: image1,
          name: name1)) ;
      afficher(context) ;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  width: MediaQuery.of(context).size.width *0.7,
                  height: 180,
                  decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue,width: 2.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFFE1E1E1), // Shadow color
                        blurRadius: 5.0,   // Spread of the shadow
                        offset: Offset(0, 2), // Offset of the shadow (X, Y)
                      ),
                    ],

                  ),
                  child: Image.asset(widget.image,),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 25,top: 15),
                    child:  Text(widget.name,style: const TextStyle(
                        fontSize: 34,
                        fontFamily: 'Nunito'
                    ),),),
                ),
                DataTable(columns:  [
                  const DataColumn(label: Text('Price')),
                  DataColumn(label: Text(widget.prix)),
                ], rows: [
                  DataRow(cells: [
                    DataCell(Text('Color')),
                    DataCell(Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 0,top: 15),
                                width: 15,
                                height: 15,
                                decoration: const BoxDecoration(
                                    shape : BoxShape.circle,
                                    color: Colors.black
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10,top: 15),
                                width: 15,
                                height: 15,
                                decoration: const BoxDecoration(
                                  shape : BoxShape.circle,
                                  color: Color(0xFFEE483C),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10,top: 15),
                                width: 15,
                                height: 15,
                                decoration: const BoxDecoration(
                                  shape : BoxShape.circle,
                                  color: Color(0xFF9A9A98),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Size')),
                    DataCell(Container(
                      margin: const EdgeInsets.only(top:10 ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(left: 0,top: 0),
                                  width: 30,
                                  height: 30,
                                  decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.blueGrey)

                                  ),
                                  child: const Center(
                                    child: Text("41",style: TextStyle(
                                        fontSize: 17
                                    ),),
                                  )
                              ),
                              Container(
                                  margin: const EdgeInsets.only(left: 10,top: 0),
                                  width: 30,
                                  height: 30,
                                  decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.blueGrey)

                                  ),
                                  child: const Center(
                                    child: Text("42",style: TextStyle(
                                        fontSize: 17
                                    ),),
                                  )
                              ),
                              Container(
                                  margin: const EdgeInsets.only(left: 15,top:0),
                                  width: 30,
                                  height: 30,
                                  decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.blueGrey)

                                  ),
                                  child: const Center(
                                    child: Text("43",style: TextStyle(
                                        fontSize: 17
                                    ),),
                                  )
                              ),
                              Container(
                                  margin: const EdgeInsets.only(left: 15,top: 0),
                                  width: 65,
                                  height: 35,
                                  decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.blueGrey)

                                  ),
                                  child: const Center(
                                    child: Text("Other..",style: TextStyle(
                                        fontSize: 17
                                    ),),
                                  )
                              ),
                            ],
                          )
                        ],
                      ),
                    ),),
                  ]),
                ],

                ),
                Container(
                  margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.57,
                      top: 15,bottom: 5),
                  child: const Text("Description : ",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito',
                    ),),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20,right: 20),
                    child: const Text("Nike est une marque de chaussures de sport et d'équipements "
                        "sportifs (vêtements et matériels). "
                        "Leader sur le marché de l'équipement sportif,"
                        " Nike concurrence Puma et Adidas.",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),),
                  ),
                ),
                InkWell(
                  onTap: () => add_to_list_shop(widget.prix,widget.image,widget.name),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                    height: 50,
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1A1A1A),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        "Add To Card",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
    );
  }
}