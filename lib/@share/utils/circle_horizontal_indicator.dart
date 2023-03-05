import 'dart:ui';

import 'package:flutter/cupertino.dart';

class CircleHorizontalTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleHorizontalTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _painter;
  }
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height + 5);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
