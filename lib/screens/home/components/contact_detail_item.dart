import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/service/launch_url_service.dart';

class ContactDetailItem extends StatelessWidget {
  final IconData iconData;
  final String url;

  ContactDetailItem({this.iconData, this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kMarginL),
      child: InkWell(
        onTap: () {
          launchURL(url);
        },
        child: Icon(
          iconData,
          size: 50,
        ),
      ),
    );
  }
}
