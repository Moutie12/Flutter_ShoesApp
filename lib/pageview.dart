import 'package:flutter/material.dart';
import 'dots.dart';
import 'face_app.dart';
import 'list_item.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({Key? key}) : super(key: key);

  @override
  State<CustomPageView> createState() => RootCreateState();
}

class RootCreateState extends State<CustomPageView> {
  late final PageController pageController;
  int currentPage = 0; // Declare currentPage as a regular int and initialize it.

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  void passToFace() {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
      return  Face() ;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: pageController,
          onPageChanged: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          children: const [
            Listview(
                nom: "E Shopping",
                description: "Explore top organic fruits & grab them",
                url: "assets/images/onboarding1.png"),
            Listview(
                nom: "Delivery on the way",
                description: "Get your order by speed delivery",
                url: "assets/images/onboarding2.png"),
            Listview(
                nom: "Delivery Arrived",
                description: "Order is arrived at your Place",
                url: "assets/images/onboarding3.png")
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.7,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.only(left: 0, right: 0, top: 40.0),
            child: Dots(indexDots: currentPage),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.82,
          child: GestureDetector(
              onTap: passToFace,
              child: Container(
                margin: const EdgeInsets.only(left: 55,right: 20,top: 20,bottom: 20),
                height: 50,
                width: 250,
                padding: const EdgeInsets.symmetric(vertical: 10,),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1A),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child:Text( currentPage == 2 ? "Get Started" : "Next",style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ) ,
                    ),
                  ),
              ),
            ),
        ),
      ],
    );
  }
}
