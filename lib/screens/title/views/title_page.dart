import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/components/hero_text.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/screens/about/views/about_page.dart';
import 'package:myportfolio/screens/title/components/contact_detail_item.dart';
import 'package:myportfolio/service/image_utils.dart';
import 'package:myportfolio/service/launch_url_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    toGitHub() => launchURL(kGithubUrl);

    toLinkedIn() => launchURL(kLinkedInUrl);

    displayCV() => launchURL(kGithubUrl);

    navigateToAboutMe() => Navigator.pushNamed(context, AboutPage.id);

    return Container(
      padding: EdgeInsets.only(
        bottom: bottomSectionPadding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kMargin),
            child: HeroText(
              tag: NAME_TAG,
              text: PORTFOLIO_NAME,
              style: kTitleTextStyle,
              align: TextAlign.center,
            ),
          ),
          HeroText(
            tag: JOB_TITLE_TAG,
            text: POSITION_TITLE,
            style: kSubTitleTextStyle,
            align: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RotateAnimatedTextKit(
                  textAlign: TextAlign.center,
                  text: kLanguages,
                  textStyle: kLanguagesTextStyle,
                  isRepeatingAnimation: true,
                  totalRepeatCount: 100,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ContactDetailItem(
                CommunityMaterialIcons.github_box,
                toGitHub,
                GITHUB,
              ),
              ContactDetailItem(
                CommunityMaterialIcons.linkedin_box,
                toLinkedIn,
                LINKED_IN,
              ),
              ContactDetailItem(
                CommunityMaterialIcons.file_document_box,
                displayCV,
                CV,
              ),
              ContactDetailItem(
                CommunityMaterialIcons.account_box_outline,
                navigateToAboutMe,
                ABOUT_ME,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
