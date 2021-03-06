import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/components/screen_widget.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/models/project.dart';
import 'package:myportfolio/screens/projects/components/bullet_point_text.dart';
import 'package:myportfolio/screens/projects/components/project_link_tile.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:myportfolio/extension/string_extension.dart';

class ProjectScreen extends StatelessWidget {
  static const id = "/project/";
  final Project project;

  const ProjectScreen({Key key, this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    List<Widget> technologies = [];
    List<Widget> features = [];
    List<Widget> links = [];
    List<Widget> images = [];
    List<Widget> featuresLinksAndTech = [];
    double screenShotHeight = height * imagePercentage;
    double screenShotWidth = width * imagePercentage;

    if (screenShotHeight < screenShotMinHeight)
      screenShotHeight = screenShotMinHeight;

    if (screenShotWidth < screenShotMinHeight)
      screenShotWidth = screenShotMinHeight;

    if (project.technologies != null)
      project.technologies
          .forEach((tech) => technologies.add(BulletPointText(tech)));
    if (project.features != null)
      project.features
          .forEach((feature) => features.add(BulletPointText(feature)));
    if (project.projectLink != null)
      project.projectLink.forEach((link) => links.add(ProjectLinkTile(link)));
    if (project.screenshots != null)
      project.screenshots.forEach((image) => images.add(Container(
            // height: double.infinity,
            // width: double.infinity,
            child: FadeInImage(
              height: screenShotHeight,
              width: screenShotWidth,
              placeholder: MemoryImage(
                kTransparentImage,
              ),
              image: AssetImage(
                image,
              ),
            ),
          )));

    if (features != null || features.isNotEmpty)
      featuresLinksAndTech.add(Column(
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
      ));
    if (links != null || links.isNotEmpty)
      featuresLinksAndTech.add(Column(
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
      ));
    if (technologies != null || technologies.isNotEmpty)
      featuresLinksAndTech.add(Column(
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
      ));
    return ScreenWidget(
      isBackButtonVisible: true,
      topPagePadding: kMarginS,
      child: Center(
        child: Container(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: minWidthPage,
              maxWidth: maxWidthPage,
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: project.logoImage,
                      child: Container(
                        child: project.logoImage.isNotNullAndNotEmpty()
                            ? FadeInImage(
                                height: projectTileLarge,
                                width: projectTileLarge,
                                placeholder: MemoryImage(kTransparentImage),
                                image: AssetImage(project.logoImage),
                              )
                            : Icon(
                                CommunityMaterialIcons.github_box,
                                size: projectTileLarge,
                              ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kMargin,
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
                    height: kMargin,
                  ),
                  Center(
                    child: Wrap(
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.center,
                      spacing: imageGaps,
                      runSpacing: imageGaps,
                      children: featuresLinksAndTech,
                    ),
                  ),
                  if (project.screenshots != null)
                    Center(
                      child: Wrap(
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.center,
                        spacing: imageGaps,
                        runSpacing: imageGaps,
                        children: images,
                      ),
                    ),
                  SizedBox(
                    height: kMarginXXXXL,
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
