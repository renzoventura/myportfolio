import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';

class ContactDetailItem extends StatelessWidget {
  final IconData iconData;
  final Function onTap;
  final String title;
  ContactDetailItem(this.iconData, this.onTap, this.title);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    double textSize = width * 0.025;
    double iconSize = width * 0.09;

    textSize > CONTACT_TEXT_MAX_SIZE
        ? textSize = CONTACT_TEXT_MAX_SIZE
        : textSize < CONTACT_TEXT_MIN_SIZE
            ? textSize = CONTACT_TEXT_MIN_SIZE
            : textSize = textSize;

    iconSize > ICON_MAX_SIZE
        ? iconSize = ICON_MAX_SIZE
        : iconSize < ICON_MIN_SIZE
            ? iconSize = ICON_MIN_SIZE
            : iconSize = iconSize;
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
                size: iconSize,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: textSize,
              ),
            )
          ],
        ),
      ),
    );
  }
}
