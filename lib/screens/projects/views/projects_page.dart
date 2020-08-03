import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/screens/projects/components/project_item_list.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 400, maxWidth: maxWidthPage),
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
                  RECENT_PROJECTS,
                  style: kRecentProjectsStyle,
                ),
                Text(
                  VIEW_ALL,
                  style: kViewAllStyle,
                ),
              ],
            ),
          ),
          ProjectItem(),
        ],
      ),
    );
  }
}
