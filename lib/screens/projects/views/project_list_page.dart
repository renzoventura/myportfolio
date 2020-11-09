import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constant_projects.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/models/project.dart';
import 'package:myportfolio/screens/projects/components/project_item_list.dart';

class ProjectListPage extends StatelessWidget {
  const ProjectListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> projectTiles = [];
    projects.forEach((project) => projectTiles.add(ProjectItem(project)));
    return Container(
      constraints:
          BoxConstraints(minWidth: minWidthPage, maxWidth: maxWidthPage),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.arrow_drop_up_outlined,
            size: arrowSize,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kMarginXL),
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
