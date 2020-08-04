import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';

class ContactDetailItem extends StatelessWidget {
  final IconData iconData;
  final Function onTap;
  final String title;
  ContactDetailItem(this.iconData, this.onTap, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kMarginXS),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: kMarginXS,
                horizontal: kMarginXS,
              ),
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
