import 'package:myportfolio/constants/constants.dart';

extension ProjectLinkTypesExtension on ProjectLinkType {
  ProjectLinkType getStatusFromString(String statusAsString) {
    for (ProjectLinkType element in ProjectLinkType.values) {
      if (element.toString() == statusAsString) {
        return element;
      }
    }
    return null;
  }
}

extension ProjectLinkTypeExtension on ProjectLinkType {
  String getString () {
    switch(this) {
      case ProjectLinkType.GITHUB:
        return "GitHub";
      case ProjectLinkType.DEMO:
        return "Demo";
      case ProjectLinkType.YOUTUBE:
        return "Youtube";
    }
    return "";
  }
}