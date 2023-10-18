import 'package:coffee_app/model/model.dart';
import 'package:flutter/material.dart';

import '../service/network_service.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  List<Coffee> items = [];

  void fetchMovies() async {
    final data = await Network.methodGet();
    items = Network.parseMovieList(data!);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        centerTitle: true,
      ),
        body: Column(
      children: [
        SizedBox(height: 20,),
        Center(
          child: Image.asset(
            "assets/images/coffee.png",
            width: 315,
            height: 226,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 200, top: 15),
          child: Text(
            "Cappucino",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 210, top: 6),
          child: Text(
            "with Chocolate",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF9B9B9B),
            ),
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/icon1.png",
                    height: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/images/icon2.png",
                    height: 50,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40, top: 25),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(" 4.8 (230)"),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            width: 290,
            height: 2,
            color: Color(0xFFEAEAEA),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 200, top: 15),
          child: Text(
            "Description",
            style: TextStyle(
                color: Color(0xFF2F2D2C),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(
                color: Color(0xFF9B9B9B),
                fontSize: 14,
                height: 1.5
              ),
              children: [
                TextSpan(
                    text:
                        "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. "),

              TextSpan(text: "Read More", style: TextStyle(color: Color(0xFFC67C4E)))
              ],
            ),
          ),
        ),
        
        const Padding(
          padding: EdgeInsets.only(top: 10, right: 250),
          child: Text("Size", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 90,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xFFDEDEDE),
                      border: Border()
                  ),
                  child: const Text("S"),
                ),
              ),
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 90,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xFFDEDEDE),
                      border: Border()
                  ),
                  child: const Text("M"),
                ),
              ),
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 90,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xFFDEDEDE),
                      border: Border()
                  ),
                  child: const Text("L"),
                ),
              ),
            ],
          ),
        ),
        
         Padding(
          padding: const EdgeInsets.only(top: 20, right: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Column(
                children: [
                  Text("Price", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF9B9B9B)),),
                  Text("   \$ 4.53", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFFC67C4E)),),
                ],
              ),

              Container(
                alignment: Alignment.center,
                width: 217,
                height: 60,
                decoration: const BoxDecoration(
                  color: Color(0xFFC67C4E),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: const Text("Buy Now", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),),
              )
            ],
          )
        )
      ],
    ));
  }
}
