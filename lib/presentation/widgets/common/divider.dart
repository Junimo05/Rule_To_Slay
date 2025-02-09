import 'package:flutter/material.dart';

class DecorDevider extends StatelessWidget {
  final String text;

  const DecorDevider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset('assets/imgs/left_divider.png', fit: BoxFit.fill),
        ),
        Expanded(
          flex: 2,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: Image.asset(
            'assets/imgs/right_divider.png',
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
