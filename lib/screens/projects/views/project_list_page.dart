import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constant_projects.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/screens/projects/components/project_item_list.dart';

class ProjectListPage extends StatelessWidget {
  const ProjectListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: minWidthPage, maxWidth: maxWidthPage),
      height: sectionHeight,
      child: Column(
        children: <Widget>[
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
          Expanded(
            child: ListView.builder(
                itemCount: projects.length,
                itemBuilder: (BuildContext context, int index) => ProjectItem(projects[index])),
          ),
        ],
      ),
    );
  }
}
