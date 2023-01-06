import 'package:bmi_calculator/widget/containerbody.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/widget/navigation.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
   const ResultPage({super.key, required this.bmiResult, required this.interpretation, required this.resultText});

   final String bmiResult;
  final String interpretation;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Containerbody(
              colour: inactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Text(
                    resultText.toUpperCase(),
                    style: const TextStyle(
                        color: Color(0xff24d876),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    bmiResult,
                    style: const TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 22),
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          NavigationButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: (() {
              Navigator.pop(context);
            }),
          ),
        ],
      ),
    );
  }
}
