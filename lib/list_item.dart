import 'package:flutter/material.dart';

import 'dots.dart';

class Listview extends StatelessWidget{
   const Listview({Key?key,required this.url,required this.nom,required this.description}) : super(key:key);

   final String nom ;
   final String description ;
   final String url ;
  @override
  Widget build(BuildContext context){
    return Container(
      margin :  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
      child : Column(
        children: [
          Image.asset(url,height: 200,width: MediaQuery.of(context).size.width * 0.5,),
          const SizedBox(height: 60,),
          Text(nom,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),),
          const SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.only(left: 30,right: 30),
            child: Text(description,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 23,
              ),),
          ),

        ],
      )
    );
  }
}