import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final kTitleTextStyle = TextStyle(
  fontSize: 56,
  letterSpacing: 5,
  fontWeight: FontWeight.w400,
);

final kSubTitleTextStyle = TextStyle(
  fontSize: 24,
  letterSpacing: 3,
  fontWeight: FontWeight.bold,
);

final kLanguagesTextStyle = TextStyle(
  fontSize: 20,
);

final kCircleAvatarChildTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

final kRecentProjectsStyle = TextStyle(
  fontSize: 28,
);

final kViewAllStyle = TextStyle(
  fontSize: 16,
);

final BoxDecoration kProjectTile = BoxDecoration(
  borderRadius: BorderRadius.all(
    Radius.circular(10.0),
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
const String PORTFOLIO_NAME = "RENZO VENTURA";
const String RECENT_PROJECTS = "Recent Projects";
const String VIEW_ALL = "View All";
const String GITHUB = "Github";
const String LINKED_IN = "LinkedIn";
const String CV = "CV";
const String ABOUT_ME = "About Me";
