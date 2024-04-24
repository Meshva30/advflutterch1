import 'package:flutter/material.dart';

Column theme_Change_Text() {
  return Column(
    children: [
      Text(
        'Yo Man!',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 40.0, vertical: 10),
        child: Text(
          "It's a simple example of dark theme",
          textAlign: TextAlign.center,
          style:
          TextStyle(fontWeight: FontWeight.w500, fontSize: 22,color: Colors.grey),
        ),
      ),
    ],
  );
}