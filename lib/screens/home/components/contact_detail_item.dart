import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/service/launch_url_service.dart';

class ContactDetailItem extends StatelessWidget {
  final IconData iconData;
  final Function onTap;
  final String title;
  ContactDetailItem(this.iconData, this.onTap, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kMarginS),
      child: InkWell(
        onTap: onTap,
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
