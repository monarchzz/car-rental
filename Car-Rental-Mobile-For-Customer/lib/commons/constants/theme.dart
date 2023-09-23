import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: CustomColors.primaryMaterialColor,
  // appBarTheme: AppBarTheme(
  //   color: CustomColors.appBarColor,
  //   systemOverlayStyle: SystemUiOverlayStyle(
  //     statusBarIconBrightness: Brightness.dark,
  //     statusBarColor: CustomColors.appBarColor.withOpacity(0.5),
  //   ),
  // ),
  fontFamily: GoogleFonts.sourceSansPro().fontFamily,
);
