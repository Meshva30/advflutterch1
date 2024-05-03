import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Contact Us',
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
          size: 25,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
            child: Text(
              textAlign: TextAlign.center,
              "If You have any queries,get in touch with \n us.We will be happy to help you!",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          InkWell(
            onTap: () {
              Uri uri = Uri.parse('tel: +91 9313220217');
              launcher.launchUrl(uri);
            },
            child: Container(
              height: 65,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue,
                    width: 1.5,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.phone_android_outlined,
                    color: Colors.blue,
                    size: 40,
                  ),
                  Text(
                    "+91 1234567890",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                Uri uri = Uri.parse('mailto: rw8.akhil@gmail.com');
                launcher.launchUrl(uri);
              },
              child: Container(
                height: 65,
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.blue,
                      width: 1.5,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.mail_outline_outlined,
                      color: Colors.blue,
                      size: 40,
                    ),
                    Text(
                      "info@xygamil.com",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Uri uri = Uri.parse('sms: +91 9313220217');
              launcher.launchUrl(uri);
            },
            child: Container(
              height: 65,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue,
                    width: 1.5,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.sms,
                    color: Colors.blue,
                    size: 40,
                  ),
                  Text(
                    "+91 1234567890",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 220,
            width: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.blue,
                width: 1.5,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Social Media',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1.3,
                ),
                InkWell(
                  onTap: () {
                    Uri uri = Uri.parse('https://www.linkedin.com/feed/');
                    launcher.launchUrl(uri);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/linkedin.png'))),
                        ),
                        Text(
                          '           Linkedin',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1.3,
                ),
                InkWell(
                  onTap: () {
                    Uri uri = Uri.parse('https://github.com/');
                    launcher.launchUrl(uri);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/github.jpeg',
                                  ))),
                        ),
                        Text(
                            '          Github',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.black),
                          ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
