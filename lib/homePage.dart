import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'iconWithText.dart';
import 'myCardContainer.dart';
import 'constants.dart';
import 'result_Page.dart';
import 'bmi_Brain.dart';



enum Gender {
  male,
  female,
}

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  @override

  Gender? selectedGender;
  int height = 120;
  int weight = 40;
  int age = 18;


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                  child: MyCardContainer(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    childWidget: IconWithText(name: 'MALE', yicon: Icons.male,),
                    colour: selectedGender == Gender.male ? kCardColor : kInactiveCardColor,
                  )),
              Expanded(
                  child: MyCardContainer(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    childWidget: IconWithText(name: 'FEMALE', yicon: Icons.female, ),
                    colour: selectedGender == Gender.female ? kCardColor : kInactiveCardColor,
                  ))
            ],
          )),
          Expanded(child: MyCardContainer(
            childWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                    'Height',
                  style: kButtonTextStyle,
                  textAlign: TextAlign.center,

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('$height', style: kBigTextStyle,),
                    Text('cm', style: kButtonTextStyle,),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
                    overlayColor: Color(0x30EB1555),
                    thumbColor: Colors.red,
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.white10,
                  ),
                  child: Slider(
                      value: height.toDouble(),
                      max: kSliderMaxValue,
                      min: kSliderMinValue,
                      onChanged: (double a){
                        setState(() {
                          height = a.toInt();
                        });
                      }),
                )
              ],
            ),
            colour: kCardColor,
          )),
          Expanded(child: Row(
            children: [
              Expanded(
                  child: MyCardContainer(
                    colour: kCardColor,
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                          style: kButtonTextStyle,
                        ),
                        Text(weight.toString(),
                          style: kBigTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundedButton(
                              color: Colors.white10,
                              icons: Icons.arrow_downward,
                              onPress: (){
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            RoundedButton(
                              color: Colors.white10,
                              icons: Icons.arrow_upward,
                              onPress: (){
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],)
                      ],
                    ),
                  )),
              Expanded(
                  child: MyCardContainer(
                    colour: kCardColor,
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',
                          style: kButtonTextStyle,
                        ),
                        Text(age.toString(),
                          style: kBigTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundedButton(
                              color: Colors.white10,
                              icons: Icons.arrow_downward,
                              onPress: (){
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            RoundedButton(
                              color: Colors.white10,
                              icons: Icons.arrow_upward,
                              onPress: (){
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],)
                      ],
                    ),
                  ))
            ],
          )),
          BottomButton(
            text: 'CALCULATE BMI',
            onClick: (){
              BmiBrain bmiBrain = BmiBrain(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context)=> ResultPage(
                bmiResult: bmiBrain.getScore(),
                bmiScore: bmiBrain.calcBMI(),
                bmiComment: bmiBrain.getComment(),
              ),),);
            },
          )
        ],
      ),
    );
  }
}






