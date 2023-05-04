
import 'package:flutter/material.dart';

Widget getIcon(String imgName, {Color? color, double? size}) {
  return SizedBox(
    width: size ?? 35,
    height: size ?? 35,
    child: Image.asset(
      'assets/icons/$imgName',
      color: color,
    ),
  );
}

Widget horizontalSpace([double? size]) {
  return SizedBox(width: size ?? 10);
}

Widget verticalSpace([double? size]) {
  return SizedBox(height: size ?? 10);
}
