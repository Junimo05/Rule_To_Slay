import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imgs/main_background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
