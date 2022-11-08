import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/calculator_button.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  late int firstNum;
  late int secondNum;
  late String history = '';
  late String textToDisplay = '';
  late String res;
  late String operation;

  void btnONclick(String btnVal) {
    if (btnVal == 'C') {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-$textToDisplay';
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '÷') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '÷') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: const Alignment(1, 1),
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                history,
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    fontSize: 24,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: const Alignment(1, 1),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                textToDisplay,
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    fontSize: 46,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: 'AC',
                textcolor: Colors.white,
                callback: btnONclick,
                color: Colors.grey,
                textsize: 23,
              ),
              CalculatorButton(
                text: 'C',
                textcolor: Colors.white,
                callback: btnONclick,
                color: Colors.grey,
                textsize: 24,
              ),
              CalculatorButton(
                text: '<',
                textcolor: Colors.white,
                callback: btnONclick,
                color: Colors.grey,
                textsize: 24,
              ),
              CalculatorButton(
                text: '÷',
                textcolor: Colors.white,
                callback: btnONclick,
                color: Colors.deepPurpleAccent,
                textsize: 24,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: '9',
                textcolor: Colors.black,
                callback: btnONclick,
                color: Colors.white,
                textsize: 24,
              ),
              CalculatorButton(
                text: '8',
                textcolor: Colors.black,
                callback: btnONclick,
                color: Colors.white,
                textsize: 24,
              ),
              CalculatorButton(
                text: '7',
                textcolor: Colors.black,
                callback: btnONclick,
                color: Colors.white,
                textsize: 24,
              ),
              CalculatorButton(
                text: 'X',
                textcolor: Colors.white,
                callback: btnONclick,
                color: Colors.deepPurpleAccent,
                textsize: 24,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: '6',
                textcolor: Colors.black,
                callback: btnONclick,
                color: Colors.white,
                textsize: 24,
              ),
              CalculatorButton(
                text: '5',
                textcolor: Colors.black,
                callback: btnONclick,
                color: Colors.white,
                textsize: 24,
              ),
              CalculatorButton(
                text: '4',
                textcolor: Colors.black,
                callback: btnONclick,
                color: Colors.white,
                textsize: 24,
              ),
              CalculatorButton(
                text: '-',
                textcolor: Colors.white,
                callback: btnONclick,
                color: Colors.deepPurpleAccent,
                textsize: 24,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: '3',
                textcolor: Colors.black,
                callback: btnONclick,
                color: Colors.white,
                textsize: 24,
              ),
              CalculatorButton(
                text: '2',
                textcolor: Colors.black,
                callback: btnONclick,
                color: Colors.white,
                textsize: 24,
              ),
              CalculatorButton(
                text: '1',
                textcolor: Colors.black,
                callback: btnONclick,
                color: Colors.white,
                textsize: 24,
              ),
              CalculatorButton(
                text: '+',
                textcolor: Colors.white,
                callback: btnONclick,
                color: Colors.deepPurpleAccent,
                textsize: 24,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: '+/-',
                textcolor: Colors.black,
                callback: btnONclick,
                color: Colors.white,
                textsize: 23,
              ),
              CalculatorButton(
                text: '0',
                textcolor: Colors.black,
                callback: btnONclick,
                color: Colors.white,
                textsize: 24,
              ),
              CalculatorButton(
                text: '00',
                textcolor: Colors.black,
                callback: btnONclick,
                color: Colors.white,
                textsize: 24,
              ),
              CalculatorButton(
                text: '=',
                textcolor: Colors.white,
                callback: btnONclick,
                color: Colors.deepPurpleAccent,
                textsize: 24,
              ),
            ],
          )
        ],
      ),
    );
  }
}
