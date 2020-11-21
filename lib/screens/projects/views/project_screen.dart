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

    double screenShotHeight = height * imagePercentage;
    double screenShotWidth = width * imagePercentage;

    if (screenShotHeight < screenShotMinHeight)
      screenShotHeight = screenShotMinHeight;

    if (screenShotWidth < screenShotMinHeight)
      screenShotWidth = screenShotMinHeight;

    project.technologies
        .forEach((tech) => technologies.add(BulletPointText(tech)));
    project.features
        .forEach((feature) => features.add(BulletPointText(feature)));
    project.projectLink.forEach((link) => links.add(ProjectLinkTile(link)));
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
                  if (project.screenshots != null)
                    Center(
                      child: Wrap(
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.center,
                        spacing: imageGaps,
                        runSpacing: imageGaps,
                        children: images,
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
