import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';

class ProjectItems extends StatelessWidget {
  const ProjectItems({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: sectionHeight,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.grey,
      ),
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
                        Icon(CommunityMaterialIcons.github_box),
                        Icon(CommunityMaterialIcons.github_box),
                        Icon(CommunityMaterialIcons.github_box),
                      ],
                    )
                  ],
                ),
                Expanded(
                  child: Image.network(
                      'https://cdn.imgbin.com/1/15/16/imgbin-java-logo-programming-language-java-plum-uE6BW7Rz08j2cF7cY58kmJ3F8.jpg'),
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

