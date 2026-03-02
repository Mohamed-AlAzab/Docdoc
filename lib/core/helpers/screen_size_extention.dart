import 'package:flutter/material.dart';

extension ScreenSizeX on BuildContext {
  double get width => MediaQuery.widthOf(this);
  double get heigh => MediaQuery.heightOf(this);
}
