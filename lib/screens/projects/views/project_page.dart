import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/components/hero_text.dart';
import 'package:myportfolio/components/screen_widget.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/models/project.dart';
import 'package:sprintf/sprintf.dart';

class ProjectPage extends StatelessWidget {
  static const id = "/project/";
  final Project project;

  const ProjectPage({Key key, this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> technologies = [];
    for (String tech in project.technologies) {
      technologies.add(
        Padding(
          padding: EdgeInsets.only(
            left: kMarginS,
          ),
          child: Text(
            sprintf(BULLET_POINT_FORMAT, [tech]),
            style: kProjectPageTechnologyStyle,
          ),
        ),
      );
    }
    return ScreenWidget(
      isBackButtonVisible: true,
      child: Center(
        child: Container(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: minWidthPage,
              maxWidth: maxWidthPage,
            ),
            child: Container(
              padding: EdgeInsets.all(kMarginS),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Container(
                      child: Icon(
                        CommunityMaterialIcons.github_box,
                        size: 200,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kMarginL,
                  ),
                  Text(
                    project.title,
                    style: kProjectPageTitleTextStyle,
                  ),
                  Text(
                    project.longDescription,
                    style: kProjectPageDescription,
                  ),
                  SizedBox(
                    height: kMarginL,
                  ),
                  Text(
                    TECHNOLOGIES_USED,
                    style: kTechnologiesUsedStyle,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: technologies,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
