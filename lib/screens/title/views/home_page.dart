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

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Hero(
          tag: AVATAR_TAG,
          child: CircleAvatar(
            radius: ((height * 1.15 + width * 1.1) / 2) * 0.09,
            // minRadius: circleAvatarBackgroundMinRadius,
            // maxRadius: circleAvatarBackgroundMaxRadius,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: ((height * 1.25 + width* 1.1) / 2) * 0.08,
              // minRadius: circleAvatarMinRadius,
              // maxRadius: circleAvatarMaxRadius,
              child: ClipOval(
                child: Image(
                  height: double.infinity,
                  image: AssetImage(ImageUtils.avatar),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kMargin),
          child: HeroText(
            tag: NAME_TAG,
            text: PORTFOLIO_NAME,
            style: kTitleTextStyle,
            align: TextAlign.center,
          ),
        ),
        HeroText(
          tag: JOB_TITLE_TAG,
          text: POSITION_TITLE,
          style: kSubTitleTextStyle,
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
                  //TODO: Textstyle needs FONT FAMILY
                  textStyle: kLanguagesTextStyle.copyWith(
                    color: Colors.white,
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
