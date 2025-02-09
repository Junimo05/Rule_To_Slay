import 'package:flutter/material.dart';

class RedirectCardItem extends StatefulWidget {
  final IconData leadingIcon;
  final String text;
  final TextStyle? textStyle;
  final IconData? trailingIcon;
  final VoidCallback onTap;

  const RedirectCardItem({
    super.key,
    required this.leadingIcon,
    required this.text,
    this.textStyle,
    this.trailingIcon,
    required this.onTap,
  });

  @override
  State<RedirectCardItem> createState() => _RedirectCardItemState();
}

class _RedirectCardItemState extends State<RedirectCardItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _widthAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _widthAnimation = Tween<double>(begin: 150, end: 500).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _widthAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.stop();
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => _controller.forward());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return SizedBox(
          width: _widthAnimation.value,
          child: Card(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/imgs/magical_scroll.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 70.0),
                  leading: Icon(widget.leadingIcon),
                  title: FadeTransition(
                    opacity: _fadeAnimation,
                    child: ClipRect(
                      child: Text(
                        widget.text,
                        style: widget.textStyle,
                        overflow: TextOverflow.clip,
                        softWrap: false,
                      ),
                    ),
                  ),
                  trailing: widget.trailingIcon != null
                      ? Icon(widget.trailingIcon)
                      : null,
                  onTap: widget.onTap,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
