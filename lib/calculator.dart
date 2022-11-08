import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/calculator_button.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  void btnONclick(String btnVal) {
    print(btnVal);
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
                '98x7',
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
                '686',
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
                text: 'x',
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
