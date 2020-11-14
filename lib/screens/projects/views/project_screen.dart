import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/components/screen_widget.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/models/project.dart';
import 'package:myportfolio/screens/projects/components/bullet_point_text.dart';
import 'package:myportfolio/screens/projects/components/project_link_tile.dart';

class ProjectScreen extends StatelessWidget {
  static const id = "/project/";
  final Project project;

  const ProjectScreen({Key key, this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> technologies = [];
    List<Widget> features = [];
    List<Widget> links = [];

    project.technologies
        .forEach((tech) => technologies.add(BulletPointText(tech)));
    project.features
        .forEach((feature) => features.add(BulletPointText(feature)));
    project.projectLink.forEach((link) => links.add(ProjectLinkTile(link)));

    return ScreenWidget(
      isBackButtonVisible: true,
      topPagePadding: kMarginXXL,
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
                        size: projectTileLarge,
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
                  if (features != null || features.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: kMarginL),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FEATURES,
                            style: kTechnologiesUsedStyle,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: features,
                          ),
                        ],
                      ),
                    ),
                  if (links != null || links.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: kMarginL),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LINKS,
                            style: kTechnologiesUsedStyle,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: links,
                          ),
                        ],
                      ),
                    ),
                  if (technologies != null || technologies.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: kMarginL),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
