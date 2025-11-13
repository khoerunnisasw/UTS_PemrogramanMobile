import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String input = '';
  String output = '';

  void buttonPressed(String value) {
    setState(() {
      if (value == 'C') {
        input = '';
        output = '';
      } else if (value == '=') {
        try {
          output = _calculateResult(input);
        } catch (e) {
          output = 'Error';
        }
      } else if (value == '√') {
        try {
          double number = double.parse(input);
          output = sqrt(number).toString();
        } catch (e) {
          output = 'Error';
        }
      } else if (value == 'x²') {
        try {
          double number = double.parse(input);
          output = pow(number, 2).toString();
        } catch (e) {
          output = 'Error';
        }
      } else if (value == '⌫') {
        if (input.isNotEmpty) {
          input = input.substring(0, input.length - 1);
        }
      } else {
        input += value;
      }
    });
  }

  String _calculateResult(String expression) {
    expression = expression.replaceAll('×', '*').replaceAll('÷', '/');
    try {
      final result = _evaluate(expression);
      return result.toString();
    } catch (e) {
      return 'Error';
    }
  }

  double _evaluate(String exp) {
    if (exp.contains('+')) {
      final parts = exp.split('+');
      return double.parse(parts[0]) + double.parse(parts[1]);
    } else if (exp.contains('-')) {
      final parts = exp.split('-');
      return double.parse(parts[0]) - double.parse(parts[1]);
    } else if (exp.contains('*')) {
      final parts = exp.split('*');
      return double.parse(parts[0]) * double.parse(parts[1]);
    } else if (exp.contains('/')) {
      final parts = exp.split('/');
      return double.parse(parts[0]) / double.parse(parts[1]);
    }
    return double.parse(exp);
  }

  Widget _buildButton(String text, {bool isSpecial = false}) {
    Color buttonColor;
    Color textColor = const Color(0xFF0B1956);
    double buttonSize = 70;

    if (text == 'C') {
      buttonColor = const Color(0xFFD2E8FF);
    } else if (text == '=') {
      buttonColor = const Color(0xFF0B1956);
      textColor = Colors.white;
    } else {
      buttonColor = const Color(0xFFD2E8FF);
    }

    Widget buttonChild = text == 'C' || text == '='
        ? Container(
            width: double.infinity,
            height: buttonSize,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 28,
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        : Container(
            width: buttonSize,
            height: buttonSize,
            decoration: BoxDecoration(
              color: buttonColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 24,
                  color: textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );

    return GestureDetector(
      onTap: () => buttonPressed(text),
      child: buttonChild,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF3EB),
      body: SafeArea(
        child: Column(
          children: [
            // Display Area
            Container(
              width: double.infinity,
              height: 180,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFD2E8FF),
                    Color(0xFFD2E8FF),
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    input,
                    style: TextStyle(
                      fontSize: 32,
                      color: const Color(0xFF0B1956).withOpacity(0.7),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    output.isEmpty ? '0' : output,
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0B1956),
                    ),
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),

            // Button Area
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Row 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildButton('7'),
                        _buildButton('8'),
                        _buildButton('9'),
                        _buildButton('÷'),
                      ],
                    ),
                    // Row 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildButton('4'),
                        _buildButton('5'),
                        _buildButton('6'),
                        _buildButton('×'),
                      ],
                    ),
                    // Row 3
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildButton('1'),
                        _buildButton('2'),
                        _buildButton('3'),
                        _buildButton('-'),
                      ],
                    ),
                    // Row 4
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildButton('0'),
                        _buildButton('.'),
                        _buildButton('⌫'),
                        _buildButton('+'),
                      ],
                    ),
                    // Row 5 - Special buttons
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: _buildButton('C', isSpecial: true),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: _buildButton('=', isSpecial: true),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}