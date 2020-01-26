import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/service/launch_url_service.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 200, horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Renzo Ventura",
            style: kTitleTextStyle,
          ),
          Text(
            "SOFTWARE DEVELOPER",
            style: kSubTitleTextStyle,
          ),
          Row(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ContactDetailItem(
                iconData: CommunityMaterialIcons.github_box,
                url: kGithubUrl,
              ),
              SizedBox(width: 20),
              ContactDetailItem(
                iconData: CommunityMaterialIcons.linkedin_box,
                url: kLinkedInUrl,
              ),
              SizedBox(width: 20),
              ContactDetailItem(
                iconData: CommunityMaterialIcons.file_document_box,
                url: kLinkedInUrl,
              ),
              SizedBox(width: 20),
              ContactDetailItem(
                iconData: CommunityMaterialIcons.account_box_outline,
                url: kLinkedInUrl,
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class ContactDetailItem extends StatelessWidget {
  final IconData iconData;
  final String url;

  ContactDetailItem({this.iconData, this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchURL(url);
      },
      child: Icon(
        iconData,
        size: 50,
      ),
    );
  }
}

