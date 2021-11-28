import 'package:flutter/material.dart';
import 'package:news_header/config/constants.dart';

ThemeData primaryTheme = ThemeData(
  primaryColor: Colors.green,
  fontFamily: "Oxygen",
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
      .copyWith(secondary: AppColors.secondaryColor),
);
