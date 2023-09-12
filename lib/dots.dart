import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class Dots extends StatelessWidget{
   const Dots({Key?key,required this.indexDots}) : super(key:key);

  final int indexDots ;
  @override
  Widget build(BuildContext context){
      double positionAsDouble = indexDots.toDouble();
      return DotsIndicator(dotsCount: 3,
      position: positionAsDouble,);
  }
}