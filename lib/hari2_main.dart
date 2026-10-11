import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16),
          child: DecorationTextWidget(),
        ),
      ),
    );
  }
}

class DecorationTextWidget extends StatelessWidget {
  const DecorationTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Underline',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.underline,
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Line Through',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Background',
          style: TextStyle(
            fontSize: 20,
            backgroundColor: Colors.lightGreenAccent, // diubah dari yellow
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Text Shadow',
          style: TextStyle(
            fontSize: 30,
            shadows: [
              Shadow(
                offset: Offset(6, 6), // diubah dari (3, 3)
                blurRadius: 10, // diubah dari 5
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}