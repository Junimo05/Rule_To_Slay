import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class RevealText extends StatefulWidget {
  final String text;
  final TextStyle? textStyle;
  const RevealText({super.key, required this.text, this.textStyle});

  @override
  State<RevealText> createState() => _RevealTextState();
}

class _RevealTextState extends State<RevealText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // Khởi tạo AnimationController với thời gian chạy là 3 giây (có thể điều chỉnh)
    _controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    // Sử dụng CurvedAnimation để tạo hiệu ứng mượt (easeInOut)
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    // Bắt đầu animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Giải phóng tài nguyên khi không cần dùng nữa
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      // sizeFactor thay đổi từ 0 (không hiển thị) đến 1 (hiển thị đầy đủ)
      sizeFactor: _animation,
      axis: Axis.vertical,
      axisAlignment:
          -1, // Căn chỉnh theo phía trên, do đó chữ “xuất hiện” từ trên xuống
      child: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(16),
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                widget.text,
                textStyle: widget.textStyle,
                speed: const Duration(milliseconds: 100),
              ),
            ],
            isRepeatingAnimation: false,
            totalRepeatCount: 1,
          )),
    );
  }
}
