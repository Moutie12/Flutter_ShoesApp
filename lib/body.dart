

import 'package:flutter/material.dart';
import 'package:foodapp/pageview.dart';
import 'package:foodapp/secondpage.dart';

import 'face_app.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  void passtosecondpage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return const Secondpage();
      }),
    );
  }




  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30,top: 78),
          child: Image.asset('assets/images/shoes.webp',width: MediaQuery.of(context).size.width *0.8,
          height: MediaQuery.of(context).size.height * 0.4,),
        ),
        Container(
          margin: const EdgeInsets.only(left: 0,),
          child: const Text("Best Collection",style: TextStyle(
            fontSize: 36,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),),
        ),
        Container(
          margin:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1,
          right: MediaQuery.of(context).size.width * 0.02,
          top: 33),
          child: const Text("Discover the latest and most stylish \n shoes right at your fingertips.\nWe curate only the finest footwear "
              "so you can step out in confidence and style.",
          style: TextStyle(
            fontSize: 17,
            fontFamily: 'Ubuntu',
            color: Color(0xFF7B7C7C),
          ),),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return const Secondpage() ;
            }),);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 20,right: 20,top: 50),
            height: 50,
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Center(
              child: Text(
                "Get Started",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
