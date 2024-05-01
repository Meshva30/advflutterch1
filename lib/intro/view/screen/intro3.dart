import 'package:advflutterch1/%20Change%20Theme%20using%20%20provider/view/screen/counter_screen.dart';
import 'package:advflutterch1/intro/provider/intro_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../ Change Theme using  provider/view/screen/change_theme_using_provider.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

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
            top: 40,
            left: 20,
          ),
          child: Container(
            height: 380,
            width: 450,
            child: Image.asset('assets/intro3.png', fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 90,
        ),
        Text(
          "Personal Desk Space",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, letterSpacing: 1),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "We Don't believe in cubicles",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 90,
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
                      builder: (context) => Counter(),
                    ));

                    Provider.of<IntroProvider>(context, listen: false)
                        .onPressed();
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
