import 'package:flutter/material.dart';
import 'package:myportfolio/components/hero_text.dart';
import 'package:myportfolio/components/screen_widget.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/service/image_utils.dart';

class AboutPage extends StatelessWidget {
  static const id = "/about";
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      child: Container(
        padding: EdgeInsets.only(
          bottom: bottomSectionPadding,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Hero(
              tag: AVATAR_TAG,
              child: CircleAvatar(
                minRadius: circleAvatarBackgroundMinRadius,
                maxRadius: circleAvatarBackgroundMaxRadius,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  minRadius: circleAvatarMinRadius,
                  maxRadius: circleAvatarMaxRadius,
                  child: ClipOval(
                    child: Image(
                      image: AssetImage(ImageUtils.avatar),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeroText(
                  tag: NAME_TAG,
                  text: PORTFOLIO_NAME,
                  style: kTitleTextStyle,
                ),
                HeroText(
                  tag: JOB_TITLE_TAG,
                  text: POSITION_TITLE,
                  style: kSubTitleTextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
