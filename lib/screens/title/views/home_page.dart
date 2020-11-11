import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/components/hero_text.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/service/image_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
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

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Hero(
          tag: AVATAR_TAG,
          child: CircleAvatar(
            radius: ((height * 1.15 + width * 1.1) / 2) * 0.09,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: ((height * 1.25 + width * 1.1) / 2) * 0.08,
              child: ClipOval(
                child: Image(
                  height: double.infinity,
                  image: AssetImage(ImageUtils.avatar),
                ),
              ),
            ),
          ),
        ),
        //TODO: Change font based on screen width
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kMargin),
          child: HeroText(
            tag: NAME_TAG,
            text: PORTFOLIO_NAME,
            style: kTitleTextStyle.copyWith(
              fontSize: nameSize,
            ),
            align: TextAlign.center,
          ),
        ),
        HeroText(
          tag: JOB_TITLE_TAG,
          text: POSITION_TITLE,
          style: kSubTitleTextStyle.copyWith(
            fontSize: jobTitleSize,
          ),
          align: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kMargin),
          child: Container(
            height: kMarginXXXXL,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TypewriterAnimatedTextKit(
                  textStyle: kLanguagesTextStyle.copyWith(
                    color: Colors.white,
                    fontSize: jobTitleSize - 5,
                    letterSpacing: 3,
                  ),
                  textAlign: TextAlign.center,
                  text: kLanguages,
                  isRepeatingAnimation: true,
                  repeatForever: true,
                  speed: Duration(milliseconds: textAnimationSpeed),
                ),
              ],
            ),
          ),
        ),
        // ContactDetails(),
        SizedBox(
          height: kMarginXXXXL,
        ),
      ],
    );
  }
}
