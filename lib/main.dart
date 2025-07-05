import 'package:flutter/material.dart';

void main() {
  runApp(Apple());
}

class Apple extends StatelessWidget {
  Apple({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 500, 0, 0),
        child:  Row(
          children: [
            Jadval(rasm1: "assets/jamoa1.png", rasm2: "assets/jamoa2.png", jamoa1: "Leeds United", jamoa2: "Liverpool", hisob1: "0", hisob2: "2", vaqt: "83 mins",logo: "assets/pic1.png",),
            SizedBox(width: 16,),
            Jadval(rasm1: "assets/jamoa3.png", rasm2: "assets/jamoa4.png", jamoa1: "Espanyol", jamoa2: "Atl.Madrid", hisob1: "1", hisob2: "0", vaqt: "72 mins")
          ],
        ),

      ),

    );
  }
}

class Jadval extends StatelessWidget {
  Jadval({
    super.key,
    required this.rasm1,
    required this.rasm2,
    required this.jamoa1,
    required this.jamoa2,
    required this.hisob1,
    required this.hisob2,
    required this.vaqt,
    this.logo
  });
  final String rasm1,rasm2,jamoa1,jamoa2, hisob1,hisob2,vaqt;
  String? logo;



  @override
  Widget build(BuildContext context) {
    return Container(
        width: 173,
        height: 173,
        decoration: BoxDecoration(
        color: Color(0xFF353535),
    borderRadius: BorderRadius.circular(12),
    ),
    child:Column(
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Padding(
    padding: const EdgeInsets.fromLTRB(12, 10, 0, 0),
    child: Align(
    alignment: Alignment.topLeft,
    child: Image.asset(
    logo??"assets/pic1.png",
    width: 18,
    height: 18,
    ),
    ),
    ),

    Padding(
    padding: const EdgeInsets.only(right: 22),
    child: Container(
    width: 30,
    height: 14,
    decoration: BoxDecoration(
    color: Color(0xFFFD0F00),
    borderRadius: BorderRadius.circular(10),
    ),
    alignment: Alignment.center,
    child: Text(
    "LIVE",
    style: TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 8,
    color: Color(0xFFFFFFFF),
    ),
    ),
    ),
    ),
    ],
    ),
    SizedBox(height: 22.5),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,

    children: [
    Image.asset(
    rasm1,
    width: 26,
    height: 30,
    ),


      Text(
        "vs",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 10,
          color: Color(0xFFEAEAEA),
        ),
      ),
      Image.asset(
        rasm2,
        width: 22,
        height: 30,
      ),
    ],
    ),
      SizedBox(height: 12),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            jamoa1,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              color: Color(0xFFFFFFFF),
            ),
          ),
          Text(
            jamoa2,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            hisob1,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xFFFFFFFF),
            ),
          ),
          Text(vaqt,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 8,color: Color(0xFFEAEAEA)),),
          Text(hisob2,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xFFFFFFFF),
            ),),
        ],
      ),
    ],
    )
    );
  }
}
