import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:randomnumber/components/custom_card.dart';
import 'package:randomnumber/constants.dart';
import 'package:randomnumber/components/bottom_button.dart';
import 'package:randomnumber/components/round_icon_button.dart';
import 'package:randomnumber/calculator.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int min = 1;
  int max = 10;
  String random = "-";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RANDOM NUMBER GENERATOR')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: CustomCard(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "RESULT",
                    style: labelTextStyle,
                  ),
                  Text(
                    random,
                    style: randomTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomCard(
                          color: activeCardColor,
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'LOWER LIMIT',
                                style: labelTextStyle,
                              ),
                              Text(
                                min.toString(),
                                style: numberTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        min--;
                                      });
                                    },
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  RoundIconButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        if (min < max - 1) {
                                          min++;
                                        }
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomCard(
                          color: activeCardColor,
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'UPPER LIMIT',
                                style: labelTextStyle,
                              ),
                              Text(
                                max.toString(),
                                style: numberTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        if (min < max - 1) {
                                          max--;
                                        }
                                      });
                                    },
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  RoundIconButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        max++;
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'RANDOM',
            onTap: () {
              randomNumber cal = randomNumber(
                min: min,
                max: max,
              );
              String hasil = cal.generateNumber();
              setState(() {
                random = hasil;
              });
            },
          ),
        ],
      ),
    );
  }
}
