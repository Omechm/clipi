// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class ClipperLoadingWidget extends StatefulWidget {
  const ClipperLoadingWidget({
    super.key,
    this.width,
    this.height,
    required this.fillColor,
    this.duration = 3.0, // duration in seconds
  });

  final double? width;
  final double? height;
  final Color fillColor;
  final double duration;

  @override
  State<ClipperLoadingWidget> createState() => _ClipperLoadingWidgetState();
}

class _ClipperLoadingWidgetState extends State<ClipperLoadingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Animate from 0 to 1 once
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: (widget.duration * 1000).toInt()),
    );

    _controller.forward(); // Start animation
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
        return CustomPaint(
          size: Size(widget.width ?? 120, widget.height ?? 200),
          painter: _ClipperPainter(
            fillColor: widget.fillColor,
            progress: _controller.value.clamp(0.0, 1.0),
          ),
        );
      },
    );
  }
}

class _ClipperPainter extends CustomPainter {
  final Color fillColor;
  final double progress;

  _ClipperPainter({
    required this.fillColor,
    required this.progress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final outlinePaint = Paint()
      ..color = Colors.grey.shade400
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final fillPaint = Paint()
      ..color = fillColor
      ..style = PaintingStyle.fill;

    // Approximate barber clipper outline
    final clipperPath = Path();
    clipperPath.moveTo(size.width * 0.45, 0);
    clipperPath.lineTo(size.width * 0.55, 0);
    clipperPath.quadraticBezierTo(
        size.width * 0.7, size.height * 0.2, size.width * 0.65, size.height);
    clipperPath.lineTo(size.width * 0.35, size.height);
    clipperPath.quadraticBezierTo(
        size.width * 0.3, size.height * 0.2, size.width * 0.45, 0);
    clipperPath.close();

    // Fill area according to progress
    final fillHeight = size.height * progress;
    final fillRect =
        Rect.fromLTWH(0, size.height - fillHeight, size.width, fillHeight);

    canvas.save();
    canvas.clipPath(clipperPath);
    canvas.drawRect(fillRect, fillPaint);
    canvas.restore();

    // Draw outline
    canvas.drawPath(clipperPath, outlinePaint);

    // Optional: blades at top
    final bladePaint = Paint()
      ..color = Colors.grey.shade600
      ..style = PaintingStyle.fill;
    final bladeRect = Rect.fromLTWH(
        size.width * 0.4, 0, size.width * 0.2, size.height * 0.05);
    canvas.drawRect(bladeRect, bladePaint);
  }

  @override
  bool shouldRepaint(covariant _ClipperPainter oldDelegate) {
    return oldDelegate.progress != progress ||
        oldDelegate.fillColor != fillColor;
  }
}
