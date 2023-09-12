import 'package:flutter/material.dart';
import 'package:foodapp/shop.dart';

class Popup extends StatelessWidget {
  const Popup({Key?key}) : super(key:key);

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: MediaQuery.of(context).size.width *0.7,
      height: 300,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Center(
              child: Image.asset('assets/images/tick.png',width: 100,height: 100,),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: const Center(
              child: Text("Order Confirmed",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black
                ),),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                      return const Shop() ;
                    }));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: 50,
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text("List of Commands",style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: 50,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text("Cancel",style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}