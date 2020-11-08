import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/models/project.dart';
import 'package:myportfolio/models/project_link.dart';

Project glowd = Project(
  title: "Glowd",
  shortDescription: "IoT smart home cross platform iOS & Android controller",
  longDescription:
      "Built with Flutter, this is an Internet of Things smart home controller. Cross platform between iOS and Android that can control your Philips Hue lights integrated with the HUE API.",
  logoImage: "glowdFilePath",
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
    "Feature 1",
    "Feature 2",
  ],
);

Project relit = Project(
  title: "Relit",
  shortDescription: "2D collision based platformer browser game",
  longDescription:
      "Built using the Godot Game Engine, A 2D platformer game that can interact with different environments based on current state.",
  logoImage: "relitFilePath",
  features: [
    "Players can changes states between light and dark to solve fun and challenging levels.",
    "Has easy to use UI",
    "Collaborated with a musician and designer to build our first game",
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
);

Project financialMeet = Project(
  title: "FinancialMeet",
  shortDescription:
      "Fullstack web app that connects people with financial advisors to reach their financial goals.",
  longDescription:
      "A platform that helps users connect with financial advisors, to help them with their needs or financial goals.",
  logoImage: "financialMeetFilePath",
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
    JAVA,
    SPRING_BOOT,
    MYSQL,
    HIBERNATE,
    JPA,
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
      "My web portfolio built with flutter web. A place to showcase the projects that I love making during my spare time. If you'd like to see more of my professional work please have a look at my CV from the home screen.",
  logoImage: "portfolioFilePath",
  projectLink: [
    ProjectLink(
      link: "https://github.com/renzoventura/myportfolio",
      linkType: ProjectLinkType.GITHUB,
      description: "Link to the source code",
    ),
  ],
  technologies: [
    JAVA,
    SPRING_BOOT,
    AWS,
  ],
  features: [
    "Feature 1",
    "Feature 2",
  ],
);

List<Project> projects = [
  glowd,
  relit,
  financialMeet,
  portfolio,
];
