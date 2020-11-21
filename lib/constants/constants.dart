import 'package:flutter/material.dart';

//Default Color
final Color defaultColor = Colors.grey[900];

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
final kAnimatedTextStyle = TextStyle(
  color: Colors.white,
  letterSpacing: 3,
);

//font sizes min and max
const double NAME_MIN_SIZE = 24;
const double NAME_MAX_SIZE = 56;
const double JOB_MIN_SIZE = 12;
const double JOB_MAX_SIZE = 24;
const double CONTACT_TEXT_MIN_SIZE = 8;
const double CONTACT_TEXT_MAX_SIZE = 22;
const double ICON_MAX_SIZE = 44;
const double ICON_MIN_SIZE = 10;
const double PROJECT_TILE_FONT_MIN_SIZE = 12;
const double PROJECT_TILE_FONT_MAX_SIZE = 22;
const double PROJECT_ICON_FONT_MIN_SIZE = 14;
const double PROJECT_ICON_FONT_MAX_SIZE = 54;
const double ANIMATED_MIN_SIZE = 4;
const double ANIMATED_MAX_SIZE = 12;

final BoxDecoration kProjectTile = BoxDecoration(
  borderRadius: BorderRadius.all(
    Radius.circular(10.0),
  ),
);
final Radius slideUpCorners = Radius.circular(20.0);
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
const double kMarginXXXXXL = 40.0;

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
const double projectTileSmall = 50;
const double projectTileLarge = 200;
const double circleAvatarBackgroundMinRadius = 20.0;
const double circleAvatarBackgroundMaxRadius = 106.0;
const double arrowSize = 60.0;
const double imageGaps = 20;
const double screenShotMinHeight = 280;
const double screenShotMinWidth = 80;

//labels
const String POSITION_TITLE = "FULLSTACK DEVELOPER";
const String PORTFOLIO_NAME = "RENZO VENTURA";
const String EMAIL = "renzoventura96@gmail.com";
const String PROJECTS = "Projects";
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
const String SCROLL_DOWN = 'SCROLL DOWN FOR PROJECTS';

//project types
enum PROJECT_TYPE {
  FULLSTACK,
  BACKEND,
  FRONTEND,
  YOUTUBE,
  IOT,
  APP,
}

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
const String GODOT = "Godot Engine";
const String GD_SCRIPT = "GDScript";
const String AWS = "Amazon Web Services";
const String MYSQL = "mySQL";
const String HIBERNATE = "Hibernate";
const String JPA = "Spring Data JPA";
const String FIREBASE = "Firebase";

//hero tags
const String AVATAR_TAG = "avatar";
const String NAME_TAG = "name";
const String JOB_TITLE_TAG = "jobTitle";

//url
String kGithubUrl = "https://github.com/renzoventura";
String kLinkedInUrl = "https://www.linkedin.com/in/renzoventura/";
String kCVGoogleDriveUrl = "https://docs.google.com/document/d/1IqrNjVRFOarXazkQxgBpLtOecg8Ry8KJNbrZq-gzXnw/export?format=pdf";

//technologies display
const List<String> kLanguages = [
  'A PROBLEM SOLVER 🤓',
  'LOVES BUILDING APPS 📱',
  'CAN ALSO DEVELOP APIS 💻',
  "GAME DEVELOPER BY NIGHT 👾",
  "A MARATHON RUNNER 🏃‍♂️",
];

//about me
const String ABOUT_ME_DESCRIPTION =
    "A fullstack developer in the fintech space.";
const String INTERESTS_DESCRIPTION =
    "I am passionate about building products that accelerate organizational success.";

const String NOTABLE = "Notable achievements that I've accomplished:";
const List<String> ACHIEVEMENTS = [
  'Developed a feature rich payment solution app',
  'Developed a scalable automated test system. It resulted in improving my companies release process efficiency by 10% by automating regression testing and saw a significant decrease in bug raises by 15%!'
];

const String INTEREST = "When I'm not working on my side projects, I like to:";
const List<String> INTERESTS = [
  'Reading! My favourite books are "The Obstacle is the way" by Ryan Holiday", "11.22.63" by Stephen King and the "Orphan X" series by Gregg Hurwitz',
  'Running! I ran my first full marathon at the ASB Marathon 2020.',
  'Play Games!, My favourite games are "Hollow Knight" and the "Dark Souls" Series',
];

//timers
const int tileHoverAnimationDuration = 300;
const int textAnimationSpeed = 100;
const int pageDelay = 2000;

//size percentage
const double scrollPixels = 1.5;
const double titleScreenHeight = 0.8;
const double sizedBox = 0.78;
const double nameSizePercent = 0.08;
const double jobTitleSizePercent = 0.03;
const double bigRadiusHeightPercent = 1.15;
const double bigRadiusWidthPercent =1.1;
const double bigRadiusAveragePercent = 0.09;
const double smallRadiusHeightPercent = 1.25;
const double smallRadiusWidthPercent = 1.1;
const double two = 2;
const double imagePercentage = 0.3;

//position
const double top = -.25;

//url launcher email
const String mailTo = "mailto";
const String subject = "subject";
const String email_subject = "Hi!";
