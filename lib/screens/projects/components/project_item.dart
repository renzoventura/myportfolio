import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/models/project.dart';
import 'package:myportfolio/screens/projects/views/project_screen.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:myportfolio/extension/string_extension.dart';

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
    final width = MediaQuery.of(context).size.width;

    double textSize = width * 0.025;
    double iconSize = width * 0.09;

    textSize > PROJECT_TILE_FONT_MAX_SIZE
        ? textSize = PROJECT_TILE_FONT_MAX_SIZE
        : textSize < PROJECT_TILE_FONT_MIN_SIZE
            ? textSize = PROJECT_TILE_FONT_MIN_SIZE
            : textSize = textSize;

    iconSize > PROJECT_ICON_FONT_MAX_SIZE
        ? iconSize = PROJECT_ICON_FONT_MAX_SIZE
        : iconSize < PROJECT_ICON_FONT_MIN_SIZE
            ? iconSize = PROJECT_ICON_FONT_MIN_SIZE
            : iconSize = iconSize;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kMarginS),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProjectScreen(
              project: widget.project,
            ),
          ),
        ),
        onHover: (bool onHold) {
          setState(() {
            isHeld = onHold;
          });
        },
        child: AnimatedContainer(
          decoration: kProjectTile.copyWith(
            color: isHeld ? Colors.grey.shade700 : Colors.grey.shade800,
          ),
          duration: Duration(milliseconds: tileHoverAnimationDuration),
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
                child: Hero(
                  tag: widget.project.logoImage,
                  child: Container(
                    child: widget.project.logoImage.isNotNullAndNotEmpty()
                        ? FadeInImage(
                            height: iconSize,
                            width: iconSize,
                            placeholder: MemoryImage(kTransparentImage),
                            image: AssetImage(widget.project.logoImage),
                          )
                        : Icon(
                            CommunityMaterialIcons.github_box,
                            size: iconSize,
                          ),
                  ),
                ),
              ),
              SizedBox(
                width: kMarginS,
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.project.title,
                      style:
                          kProjectPageTitleStyle.copyWith(fontSize: textSize),
                    ),
                    Text(
                      widget.project.shortDescription,
                      style: kLanguagesTextStyle.copyWith(fontSize: textSize),
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
