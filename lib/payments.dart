import 'package:flutter/material.dart';


class CircularCheckbox extends StatefulWidget {
  late String payment_toption ;
  CircularCheckbox({Key?key,required this.payment_toption}) ;

  @override
  _CircularCheckboxState createState() => _CircularCheckboxState();
}

class _CircularCheckboxState extends State<CircularCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        margin: const EdgeInsets.only(top: 16,left: 5,right: 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black,
          width: 1.0)
        ),
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Container(
              child: widget.payment_toption == 'Paypal' ?
              Image.asset('assets/images/paypal.png',width:100,height: 50,) :
              Image.asset('assets/images/masterORvISA.png',width:100,height: 50,),
            ),
            Container(
              margin: const EdgeInsets.only(left: 36),
              child: Text(widget.payment_toption,style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 30.0,
                height: 30.0,
                margin: widget.payment_toption == 'Paypal' ? EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.27) :
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.136),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: _isChecked ? Colors.blue : Colors.grey,
                    width: 2.0,
                  ),
                ),
                child: _isChecked
                    ? const Icon(
                  Icons.check,
                  size: 20.0,
                  color: Colors.blue,
                )
                    : null,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Your Payment option',style: TextStyle(
          color: Colors.black
        ),),
        backgroundColor: const Color(0xFFE5E2E2),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularCheckbox(payment_toption: 'Paypal',),
            CircularCheckbox(payment_toption: 'Credit Card',),
            Container(
              margin: const EdgeInsets.only(left: 150,right: 0,top: 410,bottom: 20),
              height: 50,
              width: MediaQuery.of(context).size.width * 0.5,
              padding: const EdgeInsets.symmetric(vertical: 5,),
              decoration: BoxDecoration(
                color: const Color(0xFF1A1A1A),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text(
                  "Next",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
