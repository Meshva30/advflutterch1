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
        backgroundColor: Colors.blue,
        title: Text(
          'Flutter Stepper Demo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue,backgroundColor: Colors.white),
        ),
        child:Stepper(
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


          type: StepperType.horizontal,
          steps: [
            Step(
              title: Text('Personal'),
              content: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  hintText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Step(
                title: Text('Contact'),
                content: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Address',
                    prefixIcon: Icon(
                      Icons.home,
                      color: Colors.grey,
                    ),
                  ),
                )),
            Step(
                title: Text('Upload'),
                content: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Mobile Number',
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.grey,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
