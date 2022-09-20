import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray700 = fromHex('#676464');

  static Color gray400 = fromHex('#b8b2b2');

  static Color gray202 = fromHex('#eeeded');

  static Color blue800 = fromHex('#1f47d7');

  static Color lightBlue400 = fromHex('#1fbaeb');

  static Color gray200 = fromHex('#eaeaea');

  static Color black9003f = fromHex('#3f000000');

  static Color gray201 = fromHex('#f1efef');

  static Color gray50 = fromHex('#fffbfb');

  static Color gray100 = fromHex('#f5f2f2');

  static Color indigoA701 = fromHex('#2953e9');

  static Color black900 = fromHex('#000000');

  static Color indigoA700 = fromHex('#2852e8');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA701 = fromHex('#fffcfc');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
