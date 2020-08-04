import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';

//TODO: Remove hardcoded values
class ProjectItem extends StatefulWidget {
  const ProjectItem({Key key}) : super(key: key);

  @override
  _ProjectItemState createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  bool isHeld = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
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
                    "Glowd",
                    textAlign: TextAlign.left,
                    style: kProjectTitleStyle,
                  ),
                  Text(
                    'IoT cross platform iOS/Android app that can control your home smart lights.',
                    style: kProjectTitleStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
