import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/screens/about/views/about_page.dart';
import 'package:myportfolio/service/launch_url_service.dart';

import 'contact_detail_item.dart';

class ContactDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    toGitHub() => launchURL(kGithubUrl);

    toLinkedIn() => launchURL(kLinkedInUrl);

    displayCV() => launchURL(kGithubUrl);

    navigateToAboutMe() => Navigator.pushNamed(context, AboutPage.id);
    return Row(
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
    );
  }
}
