import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.male ? activeCardColour : inactiveCardColour,
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardChild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.female ? activeCardColour : inactiveCardColour,
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardChild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour:activeCardColour),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour:activeCardColour),
                ),
                Expanded(
                  child: ReusableCard(colour:activeCardColour),
                ),
              ],
            ),
          ),

        Container(
          color: bottomContainerColor,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottomContainerHeight,
        )],
      ),
    );
  }
}



