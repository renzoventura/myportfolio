import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/models/project_link.dart';
import 'package:myportfolio/service/launch_url_service.dart';
import 'package:sprintf/sprintf.dart';
import 'package:myportfolio/extension/enum_extension.dart';

class ProjectLinkTile extends StatelessWidget {
  final ProjectLink projectLink;

  const ProjectLinkTile(this.projectLink);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kMarginS),
                child: Text(
                  BULLET_POINT,
                  style: kBulletPoint,
                ),
              ),
              Text(
                sprintf(COLON_FORMAT, [projectLink.linkType.getString()]),
              ),
              Text(
                projectLink.description,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: kMarginXXXXL),
            child: InkWell(
              onTap: () => launchURL(projectLink.link),
              child: Text(
                projectLink.link,
                style: kHyperLink,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
