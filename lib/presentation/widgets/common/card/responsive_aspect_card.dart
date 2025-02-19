import 'package:flutter/material.dart';

class ResponsiveAspectCard extends StatelessWidget {
  final double aspectRatio;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final double? maxWidth;
  final double? maxHeight;

  const ResponsiveAspectCard({
    super.key,
    required this.aspectRatio,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius,
    this.color,
    this.border,
    this.boxShadow,
    this.maxWidth,
    this.maxHeight,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSingleChildLayout(
      delegate: _AspectRatioLayoutDelegate(aspectRatio, maxWidth, maxHeight),
      child: Material(
        borderRadius: borderRadius,
        color: color ?? Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            border: border,
            borderRadius: borderRadius,
            boxShadow: boxShadow,
          ),
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}

class _AspectRatioLayoutDelegate extends SingleChildLayoutDelegate {
  final double aspectRatio;
  final double? maxWidth;
  final double? maxHeight;

  _AspectRatioLayoutDelegate(this.aspectRatio, this.maxWidth, this.maxHeight);

  @override
  Size getSize(BoxConstraints constraints) {
    final width = constraints.maxWidth;
    final height = width / aspectRatio;

    if (height > constraints.maxHeight) {
      return Size(constraints.maxHeight * aspectRatio, constraints.maxHeight);
    }

    final size = Size(width, height);
    return Size(
      size.width.clamp(0, maxWidth ?? double.infinity),
      size.height.clamp(0, maxHeight ?? double.infinity),
    );
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    final size = getSize(constraints);
    return BoxConstraints.tightFor(
      width: size.width,
      height: size.height,
    );
  }

  @override
  bool shouldRelayout(_AspectRatioLayoutDelegate oldDelegate) {
    return aspectRatio != oldDelegate.aspectRatio ||
        maxWidth != oldDelegate.maxWidth ||
        maxHeight != oldDelegate.maxHeight;
  }
}
