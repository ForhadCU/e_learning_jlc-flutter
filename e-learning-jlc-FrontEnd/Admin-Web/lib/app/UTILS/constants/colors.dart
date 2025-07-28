import 'package:flutter/material.dart';

class TColors {
  TColors._();

  static const Color mock = Color(0x000000ff);

  // App Brand Color
  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFCCCCF5);
  static const Color tertiary = Color(0xFFE7F6FD);

  // Accents
  static const Color yellow = Color(0xFFFFB836);
  static const Color green = Color(0xFF56CDAD);
  static const Color red = Color(0xFFFF6550);
  static const Color blue = Color(0xFF26A4FF);
  static const Color purple = Color(0xFF7B61FF);

  // Neutrals
  static const Color neutrals100 = Color(0xFF25324B);
  static const Color neutrals80 = Color(0xFF515B6F);
  static const Color neutrals60 = Color(0xFF7C8493);
  static const Color neutrals40 = Color(0xFFA8ADB7);
  static const Color neutrals20 = Color(0xFFE4E5E7);
  static const Color neutrals10 = Color(0xFFF9FAFC);
  static const Color lightGray = Color(0xFFF8F8FD);

  // Gradient Colors
  static const Gradient sampleLinearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [Color(0xffff9a9e), Color(0xfffad0c4), Color(0xfffad0c4)],
  );

  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C7570);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFf6f6f6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFf3f5ff);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFf6f6f6);
  static Color darkContainer = TColors.white.withOpacity(.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF706c75);
  static const Color buttonDisabled = Color(0xFFc4c4c4);

  // Border Colors
  static const Color borderPrimary = Color(0xFFd9d9d9);
  static const Color borderSecondary = Color(0xFFe6e6e6);

  // Error and Validation Colors
  static const Color error = Color(0xFFd32f2f);
  static const Color success = Color(0xFF388e3c);
  static const Color warning = Color(0xFFf57c00);
  static const Color info = Color(0xFF1976d2);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  // static const Color black = Color.fromARGB(255, 0, 0, 0);
  static const Color darkerGrey = Color(0xFF4f4f4f);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFe0e0e0);
  static const Color softGrey = Color(0xFFf4f4f4);
  static const Color lightGrey = Color(0xFFf9f9f9);
  static const Color white = Color(0xFFffffff);

  // Feature Colors
  static const Color inputFieldIcon = Color(0xFF938F96);
}
