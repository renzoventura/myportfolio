import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final kTitleTextStyle = GoogleFonts.openSans(
  textStyle: TextStyle(
    fontSize: 52,
    letterSpacing: 4,
  ),
);

final kSubTitleTextStyle = GoogleFonts.openSans(
  textStyle: TextStyle(
    fontSize: 24,
    letterSpacing: 3,
  ),
);

final kLanguagesTextStyle = GoogleFonts.openSans(
  textStyle: TextStyle(
    fontSize: 20,
  ),
);

final kCircleAvatarChildTextStyle = GoogleFonts.openSans(
  textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
);

final BoxDecoration kProjectTile =  BoxDecoration(
  borderRadius: BorderRadius.all(
    Radius.circular(20.0),
  ),
  color: Colors.grey,
);

String kGithubUrl = "https://github.com/renzoventura";
String kLinkedInUrl = "https://www.linkedin.com/in/renzoventura/";

const List<String> kLanguages = [
  'Java ☕ Springboot 🍃',
  'Angular 🅰️️',
  'Flutter Dart 🎯',
];

const double kMarginXS = 8.0;
const double kMarginS = 12.0;
const double kMargin = 16.0;
const double kMarginL = 20.0;
const double kMarginXL = 24.0;
const double kMarginXXL = 28.0;
const double kMarginXXXL = 32.0;
const double kMarginXXXXL = 36.0;

const double kMarginLL = 64.0;


const double sectionHeight = 700.0;

const double maxWidthPage = 1200;

const String POSITION_TITLE = "SOFTWARE DEVELOPER";
const String PORTFOLIO_NAME = "Renzo Ventura";
const String RECENT_PROJECTS = "Recent Projects";
const String VIEW_ALL = "View All";
const String GITHUB = "Github";
const String LINKED_IN = "LinkedIn";
const String CV = "CV";
const String ABOUT_ME = "About Me";