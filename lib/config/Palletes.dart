//palette.dart
import 'package:flutter/material.dart'; 
class Palette { 
  static const MaterialColor WhiteToDark = const MaterialColor( 
    0xffe55f48, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    const <int, Color>{ 
      0  : const Color(0xffffff),//10% 
      100: const Color(0xe6e6e6),//20% 
      200: const Color(0xb3b3b3),//30% 
      300: const Color(0x999999),//40% 
      400: const Color(0x808080),//50% 
      500: const Color(0x666666),//60%
    }, 
  ); 
}