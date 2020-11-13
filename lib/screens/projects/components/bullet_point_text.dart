import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';

class BulletPointText extends StatelessWidget {
  @required final String text;

  const BulletPointText(this.text);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kMarginS),
          child: Text(
            BULLET_POINT,
            style: kBulletPoint,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: kProjectPageTechnologyStyle,
          ),
        ),
      ],
    );
  }
}
