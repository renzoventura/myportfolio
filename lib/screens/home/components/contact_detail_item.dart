import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/service/launch_url_service.dart';

class ContactDetailItem extends StatelessWidget {
  final IconData iconData;
  final String url;
  final String title;
  ContactDetailItem(this.iconData, this.url, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kMarginL),
      child: InkWell(
        onTap: () {
          launchURL(url);
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kMarginXS),
              child: Icon(
                iconData,
                size: 50,
              ),
            ),
            Text(
              title,
            )
          ],
        ),
      ),
    );
  }
}
