import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

enum ToggleMode { FirstVisibility, EveryVisibility }

class HighlightWText extends StatefulWidget {
  const HighlightWText(
      {super.key,
      required this.child,
      this.text = "This is Info",
      this.height = 300,
      this.width = 300,
      this.autoToggle = false,
      this.toggleMode = ToggleMode.EveryVisibility});
  final Widget child;
  final String text;
  final double height;
  final double width;
  final bool autoToggle;
  final ToggleMode toggleMode;

  @override
  State<HighlightWText> createState() => _HighlightWTextState();
}

class _HighlightWTextState extends State<HighlightWText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _showText = false;
  bool _isHighLight = false;
  bool _hasToggled = false;
  final GlobalKey _widgetKey = GlobalKey(); //auto gen key for the child widget

  @override
  void initState() {
    super.initState();

    // Controller for the animation
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    // Animation for the controller
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _showText = true;
        });
      } else if (status == AnimationStatus.dismissed) {
        setState(() {
          _showText = false;
        });
      }
    });
  }

  void _toggleEffect() {
    if (_widgetKey.currentContext == null) {
      return; // Check if the widget is still in the tree
    }
    setState(() {
      _isHighLight = !_isHighLight;
      if (_isHighLight) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
        key: _widgetKey,
        onVisibilityChanged: (info) {
          if (widget.autoToggle) {
            if (widget.toggleMode == ToggleMode.FirstVisibility &&
                !_hasToggled) {
              if (info.visibleFraction > 0) {
                _toggleEffect();
                _hasToggled = true;
              }
            } else if (widget.toggleMode == ToggleMode.EveryVisibility) {
              if (info.visibleFraction == 1) {
                _toggleEffect();
              }
            }
          }
        },
        child: GestureDetector(
          onTap: _toggleEffect,
          child: Stack(
            children: [
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: 1 - (_animation.value * 0.1),
                    child: Opacity(
                      opacity: 1 - (_animation.value * 0.8),
                      child: child,
                    ),
                  );
                },
                child: Container(
                  key: _widgetKey,
                  child: widget.child,
                ),
              ),
              if (_showText)
                Positioned.fill(
                  child: Center(
                    heightFactor: 0.5,
                    child: Text(
                      widget.text,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        height: 1.4,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
            ],
          ),
        ));
  }
}
