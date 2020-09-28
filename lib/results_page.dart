import 'package:bmi_calculator/contstants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: ResultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: BMITextStyle,
                  ),
                  Text(
                    'Your BMI result is quite low, you should eat more!',
                    textAlign: TextAlign.center,
                    style: BodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: LargerButtonTextStyle,
                ),
              ),
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          )
        ],
      ),
    );
  }
}
