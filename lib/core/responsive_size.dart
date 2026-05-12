import 'dart:ui';

import 'package:flutter/material.dart';

class ResponsiveSize {
  ResponsiveSize._();

  static const double _designWidth = 375;
  static const double _designHeight = 812;

  static FlutterView get _view => PlatformDispatcher.instance.views.first;

  static double get _screenWidth => _view.physicalSize.width / _view.devicePixelRatio;
  static double get _screenHeight =>
      _view.physicalSize.height / _view.devicePixelRatio;

  static double scaleWidth(double value) => value * (_screenWidth / _designWidth);
  static double scaleHeight(double value) =>
      value * (_screenHeight / _designHeight);
}

extension ResponsiveNumExtension on num {
  double get kw => ResponsiveSize.scaleWidth(toDouble());
  double get kh => ResponsiveSize.scaleHeight(toDouble());

  SizedBox get kwidthbox => SizedBox(width: kw);
  SizedBox get kheightbox => SizedBox(height: kh);
}
