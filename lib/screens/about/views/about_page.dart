import 'package:flutter/material.dart';
import 'package:myportfolio/components/hero_text.dart';
import 'package:myportfolio/components/screen_widget.dart';
import 'package:myportfolio/constants/constants.dart';

class AboutPage extends StatelessWidget {
  static const id = "/about";
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    double nameSize = width * 0.08;
    double jobTitleSize = width * 0.03;

    (nameSize > NAME_MAX_SIZE)
        ? nameSize = NAME_MAX_SIZE
        : nameSize < NAME_MIN_SIZE
            ? nameSize = NAME_MIN_SIZE
            : nameSize = nameSize;
    (jobTitleSize > JOB_MAX_SIZE)
        ? jobTitleSize = JOB_MAX_SIZE
        : (jobTitleSize < JOB_MIN_SIZE)
            ? jobTitleSize = JOB_MIN_SIZE
            : jobTitleSize = jobTitleSize;
    List<Widget> achievements = [];
    ACHIEVEMENTS.forEach((text) => achievements.add(Text(text)));
    List<Widget> interests = [];
    INTERESTS.forEach((text) => interests.add(Text(text)));
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
                  style: kTitleTextStyle.copyWith(fontSize: nameSize),
                  align: TextAlign.center,
                ),
                HeroText(
                  tag: JOB_TITLE_TAG,
                  text: POSITION_TITLE,
                  style: kSubTitleTextStyle.copyWith(
                    fontSize: jobTitleSize,
                  ),
                  align: TextAlign.center,
                ),
                Text(
                  ABOUT_ME_DESCRIPTION,
                ),
                Text(
                  INTERESTS_DESCRIPTION,
                ),
                Text(
                  NOTABLE,
                ),
                Column(
                  children: achievements,
                ),
                Text(
                  INTEREST,
                ),
                Column(
                  children: interests,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
