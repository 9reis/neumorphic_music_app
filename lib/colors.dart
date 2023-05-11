import 'package:flutter/material.dart';

Color bgColorLightTop = Color(0XFFD7DFE4);
Color bgColorLightBottom = Color(0XFF7A7886);
Color bgColorDarkTop = Color(0XFF62696e);
Color bgColorDarkBottom = Color(0XFF2A1D29);

Color textColorDark = Color(0XFF2A1D29);
Color textColorLight = Color(0XFFD7DFE4);

Color themeColorDark = Color(0XFF005855);
Color themeColorLight = Color(0XFF00B0AA);

Gradient buttonGradient = LinearGradient(
  colors: [
    Colors.black.withOpacity(0.7),
    Color(0XFF091F05),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

Gradient beatGradient = LinearGradient(
  colors: [
    themeColorDark,
    themeColorLight,
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
