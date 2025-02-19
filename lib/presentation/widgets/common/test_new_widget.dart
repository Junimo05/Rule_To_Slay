import 'package:flutter/material.dart';

class LineConnectorExample extends StatefulWidget {
  const LineConnectorExample({super.key});

  @override
  State<LineConnectorExample> createState() => _LineConnectorExampleState();
}

class _LineConnectorExampleState extends State<LineConnectorExample> {
  final GlobalKey key1 = GlobalKey();
  final GlobalKey key2 = GlobalKey();

  Offset? point1;
  Offset? point2;

  @override
  void initState() {
    super.initState();
    // Wait until the first frame is rendered
    WidgetsBinding.instance.addPostFrameCallback((_) => _getWidgetPositions());
  }

  void _getWidgetPositions() {
    // Get the RenderBox for each widget
    final RenderBox box1 = key1.currentContext!.findRenderObject() as RenderBox;
    final RenderBox box2 = key2.currentContext!.findRenderObject() as RenderBox;

    // Calculate the center positions (or any point you'd like)
    final pos1 = box1.localToGlobal(box1.size.center(Offset.zero));
    final pos2 = box2.localToGlobal(box2.size.center(Offset.zero));

    setState(() {
      point1 = pos1;
      point2 = pos2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      child: Stack(
        children: [
          // First widget
          Positioned(
            left: 50,
            top: 100,
            child: Container(
              key: key1,
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(child: Text('Widget 1')),
            ),
          ),
          // Second widget
          Positioned(
            left: 250,
            top: 300,
            child: Container(
              key: key2,
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(child: Text('Widget 2')),
            ),
          ),
          // The CustomPaint overlay to draw the line
          if (point1 != null && point2 != null)
            Positioned.fill(
              child: CustomPaint(
                painter: ConnectorPainter(start: point1!, end: point2!),
              ),
            ),
        ],
      ),
    );
  }
}

class ConnectorPainter extends CustomPainter {
  final Offset start;
  final Offset end;

  ConnectorPainter({required this.start, required this.end});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;

    canvas.drawLine(start, end, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
