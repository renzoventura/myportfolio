import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: sectionHeight,
      padding: EdgeInsets.all(kMargin),
      decoration: kProjectTile,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Title",
                  textAlign: TextAlign.left,
                ),
                Text(
                    'This is a super long description of the project how could i make it wrap to the new line after its obviously too big hahahahahahhaha'),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('2019'),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Row(
                      children: <Widget>[
//                        Icon(CommunityMaterialIcons.github_box),
//                        Icon(CommunityMaterialIcons.github_box),
//                        Icon(CommunityMaterialIcons.github_box),
                      ],
                    )
                  ],
                ),
                Text(
                  "Fullstack",
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
