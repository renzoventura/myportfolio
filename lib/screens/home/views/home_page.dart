import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/screens/home/components/contact_detail_item.dart';
import 'package:myportfolio/service/launch_url_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 200,
        left: 30,
        right: 30,
        bottom: 100,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            PORTFOLIO_NAME,
            style: kTitleTextStyle,
          ),
          Text(
            POSITION_TITLE,
            style: kSubTitleTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kMarginS),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ContactDetailItem(
                CommunityMaterialIcons.github_box,
                kGithubUrl,
                GITHUB,
              ),
              ContactDetailItem(
                CommunityMaterialIcons.linkedin_box,
                kLinkedInUrl,
                LINKED_IN,
              ),
              ContactDetailItem(
                CommunityMaterialIcons.file_document_box,
                kLinkedInUrl,
                CV,
              ),
              ContactDetailItem(
                CommunityMaterialIcons.account_box_outline,
                kLinkedInUrl,
                ABOUT_ME,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
