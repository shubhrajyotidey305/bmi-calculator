import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const InputPage(),
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF090C22),
        ),
        scaffoldBackgroundColor: const Color(0xFF090C22),
      ),
    );
  }
}
