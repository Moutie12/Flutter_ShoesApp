import 'package:flutter/material.dart';
import 'package:foodapp/pageview.dart';

class Secondpage extends StatelessWidget{
  const Secondpage({Key?key}) : super(key:key);

  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      backgroundColor: Colors.white,
        body: CustomPageView(),
    );
  }
}