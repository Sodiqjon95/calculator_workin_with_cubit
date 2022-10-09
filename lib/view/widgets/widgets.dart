import 'package:flutter/material.dart';

List<String> buttons = [
  'C',
  '+/-',
  '%',
  'DEL',
  '7',
  '8',
  '9',
  '/',
  '4',
  '5',
  '6',
  'x',
  '1',
  '2',
  '3',
  '-',
  '0',
  '.',
  '=',
  '+',
];
Widget myButtons({
  required int index,
  required VoidCallback onPressed,
}) {
  return Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.orangeAccent,
    ),
    child: TextButton(
        onPressed: onPressed,
        child: FittedBox(
          child: Text(
            buttons[index],
            style: const TextStyle(fontSize: 200, color: Colors.black),
          ),
        )),
  );
}

bool isOperator(String x) {
  if (x.endsWith('*') ||
      x.endsWith('-') ||
      x.endsWith('+') ||
      x.endsWith('=') ||
      x.endsWith('%') ||
      x.endsWith('/')) {
    return true;
  }
  return false;
}
