import 'package:flutter/material.dart';

import '../../utils/global_variable.dart';

class Stepper2 extends StatefulWidget {
  const Stepper2({super.key});

  @override
  State<Stepper2> createState() => _Stepper2State();
}

class _Stepper2State extends State<Stepper2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'Flutter Stepper Demo',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
            backgroundColor: Colors.white,
          ),
        ),
        child: Stepper(
          elevation: 1,
          type: StepperType.horizontal,
          currentStep: Stepperglobalvalue.StepperIndex,
          onStepContinue: () {
            setState(() {
              if (Stepperglobalvalue.StepperIndex ==
                  Stepperglobalvalue.StepperIndexStop) {
                Stepperglobalvalue.StepperIndex == 2;
              } else {
                Stepperglobalvalue.StepperIndex++;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (Stepperglobalvalue.StepperIndex == 2) {
                Stepperglobalvalue.StepperIndex--;
              } else {
                Stepperglobalvalue.StepperIndex = 0;
              }
            });
          },
          stepIconBuilder: (stepIndex, stepState) {
            return const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.done,
                color: Colors.white,
                size: 20,
              ),
            );
          },
          steps: const [
            Step(
              title: Text('Personal'),
              content: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Enter Your Fist Name',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Your Last Name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text('Contact'),
              content: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.home),
                      hintText: 'Address',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      prefixIcon: Icon(Icons.phone),
                      hintText: 'Mobile No',
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text('Upload'),
              content: Text(
                'Registration Successfully Completed !!',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}