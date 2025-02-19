import 'package:flutter/material.dart';

class TransformDisplayCard extends StatelessWidget {
  final String imageUrl;
  final double rotateX;
  final double rotateY;
  final double rotateZ;
  final double height;
  final double width;
  final double elevation;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final List<BoxShadow>? shadows;
  final BoxFit? fit;
  final bool usePerspective;
  final Border? border;
  const TransformDisplayCard({
    super.key,
    required this.imageUrl,
    this.rotateX = 0.0,
    this.rotateY = 0.0,
    this.rotateZ = 0.0,
    this.height = 120,
    this.width = 100,
    this.elevation = 4,
    this.borderRadius,
    this.padding,
    this.shadows = const [
      BoxShadow(
        color: Colors.white54,
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 0),
      )
    ],
    this.fit,
    this.usePerspective = true,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    final bool isNetworkImage = imageUrl.startsWith('http');
    final Matrix4 transform = Matrix4.identity()
      ..rotateX(rotateX)
      ..rotateY(rotateY)
      ..rotateZ(rotateZ);

    if (usePerspective) {
      transform.setEntry(3, 2, 0.001);
    }

    return Transform(
      transform: transform,
      alignment: Alignment.center,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(0),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            boxShadow: shadows,
            borderRadius: borderRadius ?? BorderRadius.circular(0),
            border: border, // Add this line
          ),
          child: isNetworkImage
              ? Image.network(
                  imageUrl,
                  fit: fit,
                  loadingBuilder: (context, child, progress) =>
                      progress == null ? child : _buildLoading(),
                )
              : Image.asset(
                  imageUrl,
                  fit: fit,
                ),
        ),
      ),
    );
  }

  Widget _buildLoading() => const Center(
        child: CircularProgressIndicator(),
      );
}
