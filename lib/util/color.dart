import 'package:flutter/cupertino.dart';

class HexColor extends Color{
  static int _getColorFromHex(String color){
    color = color.toUpperCase().replaceAll('#', '');
    if(color.length == 6){
      color = 'FF' + color;
    }
    return int.parse(color, radix: 16);
  }

  HexColor(final String color) : super(_getColorFromHex(color));
}