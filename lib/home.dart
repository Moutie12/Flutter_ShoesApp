import 'package:flutter/material.dart';

import 'body.dart';

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key:key) ;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}
