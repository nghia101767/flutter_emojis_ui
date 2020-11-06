import 'package:flutter/material.dart';

extension CustomWidget on Widget {
  Expanded toExpanded() => Expanded(child: this);
  Padding toPadSymmetric({double horizontal = 0, double vertical = 0}) {
    return Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this);
  }

  Padding toPadOnly(
      {double left = 0, double top = 0, double right = 0, double bottom = 0}) {
    return Padding(
        padding:
            EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this);
  }

  Center toCenter() {
    return Center(child: this);
  }
}

extension CustomDouble on double {
  BorderRadius toCircularRadius() {
    return BorderRadius.circular(this);
  }
}

extension CustomInt on int {
  BorderRadius toCircularRadius() {
    return BorderRadius.circular(this.toDouble());
  }
}
