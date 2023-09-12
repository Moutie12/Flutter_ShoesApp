import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget{
  const Main({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return  const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}