import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/components/hero_text.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/service/asset_utils.dart';
import 'package:transparent_image/transparent_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    double nameSize = width * nameSizePercent;
    double jobTitleSize = width * jobTitleSizePercent;
    double animatedTextSize = width * jobTitleSizePercent;

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
    (animatedTextSize > ANIMATED_MAX_SIZE)
        ? animatedTextSize = ANIMATED_MAX_SIZE
        : (animatedTextSize < ANIMATED_MIN_SIZE)
            ? animatedTextSize = ANIMATED_MIN_SIZE
            : animatedTextSize = jobTitleSize;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Hero(
          tag: AVATAR_TAG,
          child: CircleAvatar(
            radius: ((height * bigRadiusHeightPercent +
                        width * bigRadiusWidthPercent) /
                    two) *
                bigRadiusAveragePercent,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: ((height * smallRadiusHeightPercent + width * smallRadiusWidthPercent) / two) * nameSizePercent,
              child: ClipOval(
                child: FadeInImage(
                  height: double.infinity,
                  placeholder: MemoryImage(kTransparentImage),
                  image: AssetImage(AssetUtils.avatar),
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
          padding: EdgeInsets.only(
            top: kMargin,
            bottom: kMargin,
            left: kMargin,
          ),
          child: Container(
            height: kMarginXXXXL,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TypewriterAnimatedTextKit(
                  textStyle: kAnimatedTextStyle.copyWith(
                    fontSize: animatedTextSize,
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
