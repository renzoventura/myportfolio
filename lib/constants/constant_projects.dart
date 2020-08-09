import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/models/project.dart';
import 'package:myportfolio/models/project_link.dart';

Project glowd = Project(
  title: "Glowd",
  shortDescription: "IoT smart home cross platform iOS & Android controller",
  longDescription:
  "Built with Flutter, this is an Internet of Things smart home controller. Cross platform between iOS and Android that can control your Philips Hue lights integrated with the HUE API.",
  logoImage: "FilePath",
  projectLink: [
    ProjectLink(
      link: "https://github.com/renzoventura/glowd",
      linkType: ProjectLinkType.GITHUB,
      description: "Link to Github Page",
    ),
  ],
  technologies: [
    DART,
    FLUTTER,
  ],
);


 List<Project> projects = [
  glowd
];