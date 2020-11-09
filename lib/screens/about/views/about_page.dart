import 'package:flutter/material.dart';
import 'package:myportfolio/components/hero_text.dart';
import 'package:myportfolio/components/screen_widget.dart';
import 'package:myportfolio/constants/constants.dart';

class AboutPage extends StatelessWidget {
  static const id = "/about";
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      isBackButtonVisible: true,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: minWidthPage,
            maxWidth: maxWidthPage,
          ),
          child: Container(
            padding: EdgeInsets.only(
              bottom: bottomSectionPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HeroText(
                  tag: NAME_TAG,
                  text: PORTFOLIO_NAME,
                  style: kTitleTextStyle,
                  align: TextAlign.center,
                ),
                HeroText(
                  tag: JOB_TITLE_TAG,
                  text: POSITION_TITLE,
                  style: kSubTitleTextStyle,
                  align: TextAlign.center,
                ),
                Text(
                  ABOUT_ME_DESCRIPTION,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
