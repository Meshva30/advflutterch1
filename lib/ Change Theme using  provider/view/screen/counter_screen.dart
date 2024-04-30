import 'package:advflutterch1/%20Change%20Theme%20using%20%20provider/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Counter App',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          Provider.of<CounterProvider>(context, listen: true).count.toString(),
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).increament();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
