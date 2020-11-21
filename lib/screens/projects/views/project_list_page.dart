import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constant_projects.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/screens/projects/components/project_item.dart';
import 'package:myportfolio/screens/title/components/contact_details.dart';

class ProjectListPage extends StatelessWidget {
  const ProjectListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    List<Widget> projectTiles = [];
    projects.forEach((project) => projectTiles.add(ProjectItem(project)));
    double textSize = width * 0.025;
    textSize > ANIMATED_MAX_SIZE
        ? textSize = ANIMATED_MAX_SIZE
        : textSize < ANIMATED_MIN_SIZE
            ? textSize = ANIMATED_MIN_SIZE
            : textSize = textSize;
    return Container(
      constraints:
          BoxConstraints(minWidth: minWidthPage, maxWidth: maxWidthPage),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: kMarginXL,
              bottom: kMarginXXXXXL,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: kMarginS),
                  child: Text(
                    SCROLL_DOWN,
                    style: kViewAllStyle.copyWith(
                      fontSize: textSize,
                    ),
                  ),
                ),
                ContactDetails(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: kMarginXXXXL,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  PROJECTS,
                  style: kRecentProjectsStyle,
                ),
                Text(
                  VIEW_ALL,
                  style: kTechnologiesUsedStyle,
                ),
              ],
            ),
          ),
          Column(
            children: projectTiles,
          ),
          SizedBox(
            height: kMarginLL,
          ),
        ],
      ),
    );
  }
}
