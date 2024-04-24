
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/global_variable.dart';

class StepperApp extends StatefulWidget {
  const StepperApp({super.key});

  @override
  State<StepperApp> createState() => _StepperAppState();
}

class _StepperAppState extends State<StepperApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Flutter Stepper Demo',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),

        ),
        child: Stepper(


          onStepTapped: (value) {
            setState(() {
              Stepperglobalvalue.StepperIndex = value;
            });
          },
          currentStep: Stepperglobalvalue.StepperIndex,
          onStepCancel: () {
            setState(() {
              if (Stepperglobalvalue.StepperIndex == 2) {
                Stepperglobalvalue.StepperIndex--;
              } else {
                Stepperglobalvalue.StepperIndex = 0;
              }
            });
          },
          onStepContinue: () {
            setState(() {
              if (Stepperglobalvalue.StepperIndex ==
                  Stepperglobalvalue.StepperIndexStop) {
                Stepperglobalvalue.StepperIndex = 2;
              } else {
                Stepperglobalvalue.StepperIndex++;
              }
            });
          },
          stepIconBuilder: (stepIndex, stepState) {
            return CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.done,
                size: 20,
                color: Colors.white,
              ),
            );
          },
          steps: [
            Step(
                label: Text('Hello'),
                title: Text('Account'),
                content: TextField(
                  decoration: InputDecoration(hintText: 'Account'),
                )),
            Step(
                title: Text('Address'),
                content: TextField(
                  decoration: InputDecoration(hintText: 'Address'),
                )),
            Step(title: Text('Mobile Number'), content: TextField(
              decoration: InputDecoration(
                  hintText: 'Mobile Number'
              ),
            ))
          ],
        ),
      ),
    );
  }
}