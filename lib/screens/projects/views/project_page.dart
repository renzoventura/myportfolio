import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/components/hero_text.dart';
import 'package:myportfolio/components/screen_widget.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/models/project.dart';

class ProjectPage extends StatelessWidget {
  static const id = "/project/";
  final Project project;

  const ProjectPage({Key key, this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      child: Container(
//        constraints: BoxConstraints(minWidth: minWidthPage, maxWidth: maxWidthPage),
        child: Center(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minWidth: minWidthPage, maxWidth: maxWidthPage),
            child: Container(
              padding: EdgeInsets.all(kMarginS),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: project.logoImage,
                      child: Container(
                        child: Icon(
                          CommunityMaterialIcons.github_box,
                          size: 200,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kMarginL,
                  ),
                  HeroText(
                    tag: project.title,
                    text: project.title,
                    style: kProjectPageTitleTextStyle,
                  ),
                  HeroText(
                    tag: project.longDescription,
                    text: project.longDescription,
                    style: kLanguagesTextStyle,
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
