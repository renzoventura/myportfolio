import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/models/project.dart';
import 'package:myportfolio/models/project_link.dart';
import 'package:sprintf/sprintf.dart';

Project glowd = Project(
  title: "Glowd",
  shortDescription: "IoT smart home cross platform iOS & Android controller",
  longDescription:
      "An Internet of Things smart home controller. iOS/Android cross platform app that can control your Philips Hue lights integrated with the HUE API.",
  logoImage: "assets/images/glowd/logo/logo.png",
  projectLink: [
    ProjectLink(
      link: "https://github.com/renzoventura/glowd",
      linkType: ProjectLinkType.GITHUB,
      description: "Link to source code",
    ),
  ],
  technologies: [
    DART,
    FLUTTER,
  ],
  features: [
    "Integrated Hue APIs with Chopper",
    "Lights are grouped up by rooms",
    "Can turn on/off all lights in a room",
    "Update light brightness, state and colors",
  ],
);

Project relit = Project(
  title: "Relit",
  shortDescription: "2D collision based platformer browser game",
  longDescription:
      "2D pixel art platformer game. Players can interact with different environments based on toggleable current states.",
  logoImage: "assets/images/relit/logo/logo.png",
  features: [
    "Players can changes states between light and dark to solve fun and challenging levels.",
    "Has easy to use UI",
    "Collaborated with a musician and artist to build our first game",
    "Submitted to 'MY FIRST GAME JAM 2020'",
  ],
  projectLink: [
    ProjectLink(
      link: "https://dual-lasagna.itch.io/relit",
      linkType: ProjectLinkType.DEMO,
      description: "Play the demo! (Browser only)",
    ),
    ProjectLink(
      link: "https://github.com/renzoventura/Relit",
      linkType: ProjectLinkType.GITHUB,
      description: "Link to source code",
    ),
  ],
  technologies: [
    GODOT,
    GD_SCRIPT,
  ],
  screenshots: [
    "assets/images/relit/screenshots/1.PNG",
    "assets/images/relit/screenshots/2.PNG",
    "assets/images/relit/screenshots/3.PNG",
    "assets/images/relit/screenshots/4.PNG",
  ],
);

Project financialMeet = Project(
  title: "FinancialMeet",
  shortDescription:
      "Fullstack web app that connects people with financial advisors to reach their financial goals.",
  longDescription:
      "A platform that helps users connect with financial advisors, to help them with their needs or financial goals.",
  logoImage: "assets/images/financial_meet/logo/logo.png",
  projectLink: [
    ProjectLink(
      link: "https://github.com/renzoventura/financial-meet",
      linkType: ProjectLinkType.GITHUB,
      description: "Link to the BackEnd source code",
    ),
    ProjectLink(
      link: "https://github.com/renzoventura/financial-meet-frontend",
      linkType: ProjectLinkType.GITHUB,
      description: "Link to the FrontEnd source code",
    ),
  ],
  technologies: [
    sprintf("%s with %s", [JAVA, SPRING_BOOT]),
    sprintf("%s, %s, %s", [MYSQL, HIBERNATE, JPA]),
    ANGULAR7,
    AWS,
  ],
  features: [
    "Implemented role based authentications for APIs using JWT and router guards for front end security.",
    "Users can track current states of their financial journey.",
    "Deployed testing and production environments using AWS. EC2 for backend, S3 for frontend and RDS for MYSQL database."
  ],
);

Project portfolio = Project(
    title: "My Portfolio",
    shortDescription:
        "My Portfolio (you're looking at right now! :D) Powered with Flutter Web.",
    longDescription:
        "My web portfolio powered by Flutter Web. A place to showcase projects that I love making during my spare time. If you'd like to see more of my professional work please refer to my CV from the home screen.",
    logoImage: "assets/images/portfolio/logo/logo.png",
    projectLink: [
      ProjectLink(
        link: "https://github.com/renzoventura/myportfolio",
        linkType: ProjectLinkType.GITHUB,
        description: "Link to the source code",
      ),
    ],
    technologies: [
      FLUTTER,
      DART,
    ],
    features: [
      "Hosted the webapp to Github Pages",
      "Configure github pages to use a custom domain name",
      "Set up HTTPs",
    ],
    screenshots: [
      "assets/images/portfolio/screenshots/1.PNG",
      "assets/images/portfolio/screenshots/3.PNG",
      "assets/images/portfolio/screenshots/6.PNG",
      "assets/images/portfolio/screenshots/7.PNG",
    ]);

Project shade = Project(
  title: "Shade",
  shortDescription: "Survival fighting game with 2D pixel art with Enemy AI.",
  longDescription:
      "I wanted to build a game from scratch all by myself, I animated and designed all art and programmed the game to completion myself.",
  logoImage: "assets/images/shade/logo/logo.png",
  projectLink: [
    ProjectLink(
      link: "https://github.com/renzoventura/Shade",
      linkType: ProjectLinkType.GITHUB,
      description: "Link to the source code",
    ),
    ProjectLink(
      link: "https://dual-lasagna.itch.io/shade",
      linkType: ProjectLinkType.DEMO,
      description: "Play the demo! (Browser only)",
    ),
  ],
  technologies: [
    GODOT,
    GD_SCRIPT,
  ],
  features: [
    "Enemy AI",
    "Finite state machine",
    "HUD Life/Game Over System",
    "Animation with collision",
    "Easy UI",
  ],
  screenshots: [
    "assets/images/shade/screenshots/1.PNG",
    "assets/images/shade/screenshots/2.PNG",
    "assets/images/shade/screenshots/3.PNG",
    "assets/images/shade/screenshots/4.PNG",
  ],
);

Project flutterBootCampProjects = Project(
  title: "Flutter Bootcamp Projects",
  shortDescription:
      "Projects I made during the 2020 Flutter Development Bootcamp",
  longDescription:
      "Projects I made during the 2020 Flutter Development Bootcamp that consist of \n- Exchange rate app \n- BMI calculator \n- Instant messaging using firebase \n- To do List \n- Weather App",
  logoImage: "assets/images/flutter_projects/logo/logo.png",
  projectLink: [
    ProjectLink(
      link: "https://github.com/renzoventura/FlutterBootcampProjects",
      linkType: ProjectLinkType.GITHUB,
      description: "Link to the source code",
    ),
  ],
  technologies: [FLUTTER, DART, FIREBASE],
  features: [
    "Used Firebase for authentication, cloud functions and database.",
    "Call weather API to retrieve weather information based on users current location",
    "Call bitcoinaverage API to display different Crypocurrency price index exchange rates.",
  ],
);

List<Project> projects = [
  glowd,
  financialMeet,
  relit,
  shade,
  portfolio,
  flutterBootCampProjects,
];
