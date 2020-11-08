import 'package:flutter/material.dart';

//Material Styles
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
final kProjectPageTitleStyle = TextStyle(
  fontSize: 24,
);
final kProjectPageDescription = TextStyle(
  fontSize: 14,
);
final kTechnologiesUsedStyle = TextStyle(
  fontSize: 16,
);
final kProjectPageTechnologyStyle = TextStyle(
  fontSize: 14,
);

final BoxDecoration kProjectTile = BoxDecoration(
  borderRadius: BorderRadius.all(
    Radius.circular(10.0),
  ),
);
final kProjectPageTitleTextStyle = TextStyle(
  fontSize: 32,
);
final kProjectLongDescriptionTextStyle = TextStyle(
  fontSize: 24,
);
final kBulletPoint = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);
final kHyperLink = TextStyle(
  fontSize: 18,
  color: Colors.blue,
);

//margins
const double kMarginXS = 8.0;
const double kMarginS = 12.0;
const double kMargin = 16.0;
const double kMarginL = 20.0;
const double kMarginXL = 24.0;
const double kMarginXXL = 28.0;
const double kMarginXXXL = 32.0;
const double kMarginXXXXL = 36.0;

//large margins
const double kMarginLL = 64.0;

//page sizes
const double sectionHeight = 700.0;
const double minWidthPage = 400;
const double maxWidthPage = 1200;
const double topPagePadding = 24;
const double topPageBasePadding = 80;

//section padding
const double bottomSectionPadding = 100;

//object sizes
const double circleAvatarMinRadius = 16.0;
const double circleAvatarMaxRadius = 100.0;
const double circleAvatarBackgroundMinRadius = 20.0;
const double circleAvatarBackgroundMaxRadius = 104.0;

//labels
const String POSITION_TITLE = "SOFTWARE DEVELOPER";
const String PORTFOLIO_NAME = "RENZO VENTURA";
const String RECENT_PROJECTS = "Recent Projects";
const String VIEW_ALL = "View All";
const String GITHUB = "Github";
const String LINKED_IN = "LinkedIn";
const String CV = "CV";
const String ABOUT_ME = "About Me";
const String TECHNOLOGIES_USED = "Technologies Used:";
const String FEATURES = "Features:";
const String LINKS = "Links:";
const String BULLET_POINT = "•";
const String COLON_FORMAT = "%s : ";

//project types
enum PROJECT_TYPE {FULLSTACK, BACKEND, FRONTEND,
  YOUTUBE, IOT, APP,}

//project link types
enum ProjectLinkType {
  GITHUB,
  DEMO,
}

//technologies
const String DART = "Dart";
const String FLUTTER = "Flutter";
const String FLUTTER_WEB = "Flutter WEB";
const String JAVA = "Java 8";
const String SPRING_BOOT = "Springboot";
const String ANGULAR7 = "Angular 7";
const String GODOT = "Godot Game Engine";
const String AWS = "Amazon Web Services";
const String MYSQL = "mySQL";
const String HIBERNATE = "Hibernate";
const String JPA = "Spring Data JPA";

//hero tags
const String AVATAR_TAG = "avatar";
const String NAME_TAG = "name";
const String JOB_TITLE_TAG = "jobTitle";

//url
String kGithubUrl = "https://github.com/renzoventura";
String kLinkedInUrl = "https://www.linkedin.com/in/renzoventura/";

//technologies display
const List<String> kLanguages = [
  'Java ☕ Springboot 🍃',
  'Angular 🅰️️',
  'Flutter Dart 🎯',
];
