import 'package:flutter/material.dart';
import 'package:rule_to_slay/presentation/widgets/tooth_clipper/zigzagclipper.dart';

class BottomDecorBar extends StatelessWidget {
  const BottomDecorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipPath(
          clipper: ZigZagClipper(offset: 5, position: ZigZagPosition.top),
          child: Container(
            height: 100,
            color: Colors.black,
            child: Container(height: 10, color: Colors.white),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: BottomAppBar(
            color: Colors.black,
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
          ),
        ),
      ],
    );
  }
}
