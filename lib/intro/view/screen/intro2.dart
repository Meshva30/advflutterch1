import 'package:advflutterch1/intro/view/screen/intro3.dart';
import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 90,
            left: 140,
          ),
          child: Container(
            height: 300,
            width: 450,
            child: Align(
              alignment: Alignment.center,
              child: Transform.scale(
                scale: 2,
                child: Image.asset('assets/intro2.png', fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 90,
        ),
        Text(
          "Stay in Touch",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, letterSpacing: 1),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Reach out to anyone at anytime",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 125,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Skip",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
              ),
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(15)),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Intro3(),
                    ));
                  },
                  icon: Icon(
                    Icons.chevron_right_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}


