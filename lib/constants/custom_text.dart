import 'package:flutter/material.dart';

class CustomText extends Text {
  CustomText(String data, {color= Colors.white, textAlign= TextAlign.center, factor=1.0,BackgroundColor= Colors.white}):
    super(data,
      textAlign: textAlign,
      textScaleFactor: factor,
      style: TextStyle(color: color)
    );
}