import 'package:bmi_calculator/constants.dart';
import '../components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class Result extends StatelessWidget {
  final String resultText;
  final String feedbackText;
  final String bmi;

  const Result(
      {Key? key,
      required this.resultText,
      required this.feedbackText,
      required this.bmi})
      : super(key: key);

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
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'YOUR RESULT',
                style: kLargeHeadlineStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kBMITextStyle,
                  ),
                  Text(
                    feedbackText,
                    textAlign: TextAlign.center,
                    style: kFeedbackStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
