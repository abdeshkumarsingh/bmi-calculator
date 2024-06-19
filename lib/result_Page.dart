import 'package:flutter/material.dart';
import 'constants.dart';
import 'myCardContainer.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({required this.bmiResult, required this.bmiComment, required this.bmiScore});

  final String bmiResult;
  final String bmiScore;
  final String bmiComment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Text(
            'Your Result',
            style: kBigTextStyle,
          )),
          Expanded(
              flex: 5,
              child: MyCardContainer(
                colour: kCardColor,
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(bmiResult.toUpperCase(),textAlign: TextAlign.center, style: kResultStatusTextStyle,),
                    Text(bmiScore,textAlign: TextAlign.center, style: kResultNumTextStyle,),
                    Text(bmiComment, textAlign: TextAlign.center, style: kResultComTextStyle,),

                    // SizedBox(height: 1, width: double.infinity,),

                  ],
                ),
              )),
    BottomButton(
    text: 'RECALCULATE BMI',
    onClick: (){
    Navigator.pop(context);
    },)
        ],
      ),
    );
  }
}
