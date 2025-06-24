import 'package:flutter/material.dart';

abstract class Helper {
  static double kheight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static double kwidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
}
