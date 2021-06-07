import 'package:flutter/material.dart';

class Utils {
  static Color scaffoldColor = Color(0xFFF0F2F5);
  static Color facebookBlue = Color(0xFF1777F2);
  static Color activeStatus = Color(0xFF4BCB1F);

  static LinearGradient roomGradient = LinearGradient(
    colors: [
      Color(0xFF496AE1),
      Color(0xFFCE48B1),
    ],
  );

  static LinearGradient storyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black26],
  );
}
