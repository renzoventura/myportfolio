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
