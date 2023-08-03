import 'package:flutter/material.dart';

class OutlineText extends StatelessWidget {
   OutlineText({super.key, required this.text,this.size});
  final String text;
  double? size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,

        style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1
              ..color = Colors.grey,
            fontSize: size?? 30),
      ),
    );
  }
}