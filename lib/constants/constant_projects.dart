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
);

Project relit = Project(
  title: "Relit",
  shortDescription: "2D collision based platformer browser game",
  longDescription:
      "Built using the Godot Game Engine, I developed a 2 dimensional platformer that can interact with different environments based on current stats. \n \n" +
          "Bio: You are the bridge between light and dark. But before saving the world can you escape dungeon split between the two dimensions?! \n Use your powers to switch between light and dark forms to escape and fulfill your destiny!",
  logoImage: "relitFilePath",
  projectLink: [
    ProjectLink(
      link: "https://github.com/renzoventura/Relit",
      linkType: ProjectLinkType.GITHUB,
      description: "Link to source code",
    ),
    ProjectLink(
      link: "https://dual-lasagna.itch.io/relit",
      linkType: ProjectLinkType.DEMO,
      description: "Play the demo!",
    ),
  ],
  technologies: [
    GODOT,
  ],
);

Project financialMeet = Project(
  title: "Financial Meet",
  shortDescription:
      "Fullstack Web platform that focuses on connecting people with financial advisors to meet their financial goals.",
  longDescription:
      "A paltform that helps users connect with financial advisors, to help them with their needs or financial goals. \n\nUsers can track current states of their financial journey. \nBackend built with Java SpringBoot Restful API and Frontend built with Angular7. \n Implemented role based authentications for APIs using JWT and router guards for front end security. \n Deployed testing and production environemnts using AWS. EC2 for backend, S3 for frontend and RDS for MYSQL database.",
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
    AWS,
  ],
);

Project portfolio = Project(
  title: "My Portfolio",
  shortDescription:
      "My Portfolio, as in this one right now! :) Powered with Flutter Web.",
  longDescription:
      "My web portfolio built with flutter web. A place to showcase the projects that I love making in my spare time usually after work. If you'd like to see more of my professional work as a software developer please have a look at my CV from the home screen.",
  logoImage: "portfolioFilePath",
  projectLink: [
    ProjectLink(
      link: "https://github.com/renzoventura/myportfolio",
      linkType: ProjectLinkType.GITHUB,
      description: "Link to the source code",
    ),
//    ProjectLink(
//      link: "renzo.tech",
//      linkType: ProjectLinkType.DEMO,
//      description: "Link to the DEMO",
//    ),
  ],
  technologies: [
    JAVA,
    SPRING_BOOT,
    AWS,
  ],
);

List<Project> projects = [
  glowd,
  relit,
  financialMeet,
  portfolio,
];
