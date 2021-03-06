import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyles {
  static const TextStyle bigHeaderDesktop = TextStyle(
    fontSize: 78,
    fontWeight: FontWeight.bold,
    color: Color(0XFF0F1319),
    height: 1.12,
  );

  static const TextStyle bigHeaderMobile = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: Color(0XFF0F1319),
    height: 1.12,
  );

  static const TextStyle meDescriptionTitleDesktop = TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle projectHeader = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle meDescriptionTitleMobile = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle projectDescription = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w300,
    color: Colors.white,
  );

  static const TextStyle tabStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const TextStyle meDescription = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static const TextStyle technologyTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
