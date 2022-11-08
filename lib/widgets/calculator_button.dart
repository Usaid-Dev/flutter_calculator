import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textcolor;
  final double textsize;
  final Function callback;

  const CalculatorButton({
    Key? key,
    required this.text,
    required this.color,
    required this.textcolor,
    required this.textsize,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              const CircleBorder(),
            ),
            backgroundColor: MaterialStateProperty.all(color),
            textStyle: MaterialStateProperty.all(
              GoogleFonts.rubik(
                textStyle: TextStyle(fontSize: textsize),
              ),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(color: textcolor),
          ),
          onPressed: () => callback(text),
        ),
      ),
    );
  }
}
