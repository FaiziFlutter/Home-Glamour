import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ColorScheme colorScheme(context) => Theme.of(context).colorScheme;

TextTheme textTheme(context) => Theme.of(context).textTheme;

double appheight(context) => MediaQuery.sizeOf(context).height;

double appWidth(context) => MediaQuery.sizeOf(context).width;

String? poppins() => GoogleFonts.poppins().fontFamily;
