import 'package:flutter/material.dart';

enum ZigZagPosition { top, bottom, left, right }

class ZigZagClipper extends CustomClipper<Path> {
  final double offset;
  final ZigZagPosition position;

  /// [offset] điều chỉnh độ cao của răng zigzag.
  /// [position] xác định cạnh nào sẽ có hiệu ứng zigzag.
  ZigZagClipper({this.offset = 0, this.position = ZigZagPosition.top});

  @override
  Path getClip(Size size) {
    final path = Path();
    // Độ cao/độ lệch của răng zigzag
    final double amplitude = 20 + offset;
    // Độ rộng (hoặc khoảng cách giữa các răng) trên cạnh ngang hoặc dọc
    final double segment = 30;

    switch (position) {
      case ZigZagPosition.top:
        // Zigzag ở cạnh trên: răng zigzag “vào trong” (xuống dưới)
        path.moveTo(0, 0);
        for (double x = 0; x < size.width; x += segment) {
          double midX = x + segment / 2;
          if (midX > size.width) midX = size.width;
          // Đỉnh răng: cách cạnh trên [amplitude] đơn vị xuống dưới
          path.lineTo(midX, amplitude);
          double endX = x + segment;
          if (endX > size.width) endX = size.width;
          // Quay trở lại cạnh trên
          path.lineTo(endX, 0);
        }
        // Vẽ các cạnh còn lại của hình chữ nhật
        path.lineTo(size.width, size.height);
        path.lineTo(0, size.height);
        path.close();
        break;

      case ZigZagPosition.bottom:
        // Zigzag ở cạnh dưới: răng zigzag “vào trong” (lên trên)
        path.moveTo(0, 0);
        path.lineTo(size.width, 0);
        path.lineTo(size.width, size.height);
        // Tạo hiệu ứng zigzag dọc cạnh dưới từ phải sang trái
        for (double x = size.width; x > 0; x -= segment) {
          double midX = x - segment / 2;
          if (midX < 0) midX = 0;
          path.lineTo(midX, size.height - amplitude);
          double endX = x - segment;
          if (endX < 0) endX = 0;
          path.lineTo(endX, size.height);
        }
        path.lineTo(0, size.height);
        path.lineTo(0, 0);
        path.close();
        break;

      case ZigZagPosition.left:
        // Zigzag ở cạnh trái: răng zigzag “vào trong” (sang phải)
        // Ta không vẽ cạnh trái thẳng mà dùng khoảng cách [amplitude] làm lề trái
        path.moveTo(amplitude, 0);
        path.lineTo(size.width, 0);
        path.lineTo(size.width, size.height);
        path.lineTo(amplitude, size.height);
        // Tạo zigzag dọc cạnh trái từ dưới lên trên
        for (double y = size.height; y > 0; y -= segment) {
          double midY = y - segment / 2;
          if (midY < 0) midY = 0;
          path.lineTo(0, midY);
          double nextY = y - segment;
          if (nextY < 0) nextY = 0;
          path.lineTo(amplitude, nextY);
        }
        path.close();
        break;

      case ZigZagPosition.right:
        // Zigzag ở cạnh phải: răng zigzag “vào trong” (sang trái)
        // Ta dùng [amplitude] để tạo khoảng lề ở cạnh phải
        path.moveTo(0, 0);
        path.lineTo(size.width - amplitude, 0);
        // Tạo zigzag dọc cạnh phải từ trên xuống dưới
        for (double y = 0; y < size.height; y += segment) {
          double midY = y + segment / 2;
          if (midY > size.height) midY = size.height;
          path.lineTo(size.width, midY);
          double nextY = y + segment;
          if (nextY > size.height) nextY = size.height;
          path.lineTo(size.width - amplitude, nextY);
        }
        path.lineTo(0, size.height);
        path.close();
        break;
    }
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
