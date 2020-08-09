import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/models/project.dart';

//TODO: Remove hardcoded values
class ProjectItem extends StatefulWidget {
  final Project project;
  const ProjectItem(this.project);

  @override
  _ProjectItemState createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  bool isHeld = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kMarginS),
      child: InkWell(
        onTap: () {},
        onHover: (bool onHold) {
          setState(() {
            isHeld = onHold;
          });
        },
        child: AnimatedContainer(
          decoration: kProjectTile.copyWith(
            color: isHeld ? Colors.grey.shade700 : Colors.grey.shade800,
          ),
          duration: Duration(milliseconds: 300),
          padding: EdgeInsets.only(
            left: kMarginS,
            top: kMargin,
            bottom: kMargin,
            right: kMargin,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Icon(
                    CommunityMaterialIcons.github_box,
                    size: 50,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.project.title,
                      textAlign: TextAlign.left,
                      style: kProjectTitleStyle,
                    ),
                    Text(
                      widget.project.shortDescription,
                      style: kProjectTitleDescription,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
