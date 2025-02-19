import 'package:flutter/material.dart';

class RotateDisplayCard extends StatelessWidget {
  final String imageUrl;
  final double rotateY;

  const RotateDisplayCard({
    super.key,
    required this.imageUrl,
    this.rotateY = -0.2, // Default rotation setting
  });

  @override
  Widget build(BuildContext context) {
    bool isNetwork =
        imageUrl.startsWith('http') || imageUrl.startsWith('https');

    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(rotateY),
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Add padding here
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white.withValues(alpha: 0.5), // Shadow color
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(
                  -10 * rotateY,
                  -5 * rotateY,
                ), // Shadow position adjusted for rotation
              ),
            ],
          ),
          child: isNetwork
              ? Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                )
              : Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }
}
