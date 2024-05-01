import 'package:advflutterch1/intro/view/screen/intro2.dart';
import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 120),
            child: Container(
              height: 300,
              width: 330,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/intro1.png'),
                      fit: BoxFit.cover)),
            ),
          ),
          Text(
            "Community",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w500, letterSpacing: 1),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Get to Know Your coworkers",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 150,
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
                        builder: (context) => Intro2(),
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
        ],
      ),
    );
  }
}
