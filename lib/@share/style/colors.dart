import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static var lightGrayBackground = HexColor('#EEEEEE');
  static var purple = HexColor('#8791E7');
  static var white = HexColor('#ffffff');
  static var grey = HexColor('#EEEEEE');
  static var greyDarkLittle = HexColor('#C0C0C0');
  static var greyDark = HexColor('#808080');
  static var yellow = HexColor('#fbcc39');
  static var yellowLight = HexColor('#FFFF55');
  static var black = HexColor('#0D0903');
  static var tomato = HexColor('#FF6347');
  static var lightGreen = HexColor('#90EE90');
  static var darkGreen = HexColor('#90EE90');
  static var amazon = HexColor('#ff9900');
  static var pink = HexColor('#FC81BC');
  static var blueSky = HexColor('#4eadfd');
  static var blue = HexColor('#2779fd');
  static var grayLight = HexColor('#e9e9eb');
  static var lightGreenHigh = HexColor('#fbf156');
  static var green = HexColor('#98ea07');
  static var blueCyan = HexColor('#7ae5fc');
  static var blueLight = HexColor('#b2e9fd');
  static var greyDarkFooter = HexColor('#A3A4A6');
  static var greyLightFooter = HexColor('#E0E0E0');
  static var red = HexColor('#FD558F');
  static var orange = HexColor('#F9BC32');


  static const MaterialColor blueSkyMaterial = MaterialColor(
    0xFF4EADFD,
    <int, Color>{
      50: Color(0xFF4EADFD),
      100: Color(0xFF4EADFD),
      200: Color(0xFF4EADFD),
      300: Color(0xFF4EADFD),
      400: Color(0xFF4EADFD),
      500: Color(0xFF4EADFD),
      600: Color(0xFF4EADFD),
      700: Color(0xFF4EADFD),
      800: Color(0xFF4EADFD),
      900: Color(0xFF4EADFD),
    },
  );
}


class HexColor extends Color {
  static int _getColorFromHex(hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(value) : super(_getColorFromHex(value));
}