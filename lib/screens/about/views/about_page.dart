import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/components/hero_text.dart';
import 'package:myportfolio/components/screen_widget.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/service/asset_utils.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  static const id = "/about";
  AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri _emailLaunchUri =
        Uri(scheme: mailTo, path: EMAIL, queryParameters: {
      subject: email_subject,
    });
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

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
                Column(
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
                    SizedBox(
                      height: kMargin,
                    ),
                    Text(
                      "$ABOUT_ME_DESCRIPTION $INTERESTS_DESCRIPTION",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: kMarginS,
                    ),
                    Text(
                      "I love meeting new people and learning about the latest tech! If you want to share ideas, work together or just want to chat",
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Don't hesitate to hit me up at...",
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: kMarginL),
                      child: InkWell(
                        onTap: () => launch(_emailLaunchUri.toString()),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(slideUpCorners),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(kMargin),
                            child: Text(
                              EMAIL,
                              style: kHyperLink.copyWith(
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: kMarginXXXXL,
                ),
                Column(
                  children: [
                    Text(
                      "ABOUT ME",
                      style: kSubTitleTextStyle.copyWith(
                        fontSize: jobTitleSize,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "When I'm not coding or building side projects, I like to...",
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: kMarginL),
                      child: Column(
                        children: [
                          Text(
                            "RUN!",
                            style: kSubTitleTextStyle.copyWith(
                              fontSize: jobTitleSize,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "I recently ran my first marathon at The 2020 ASB Marathon!",
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: kMarginS),
                            child: Column(
                              children: [
                                FadeInImage(
                                  height: height * 0.3,
                                  placeholder: MemoryImage(kTransparentImage),
                                  image: AssetImage(AssetUtils.marathon),
                                ),
                                Text(
                                  'Me, running over the Harbour bridge',
                                  style: kProjectPageDescription,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: kMarginL),
                      child: Column(
                        children: [
                          Text(
                            "READ!",
                            style: kSubTitleTextStyle.copyWith(
                              fontSize: jobTitleSize,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "My favourite books are...",
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: kMarginS),
                            child: Column(
                              children: [
                                Text(
                                  '"The Obstacle is the way" by Ryan Holiday',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '"11.22.63" by Stephen King',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'The "Orphan X" series by Gregg Hurwitz',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: kMarginL),
                      child: Column(
                        children: [
                          Text(
                            "PLAY GAMES!",
                            style: kSubTitleTextStyle.copyWith(
                              fontSize: jobTitleSize,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "My favourite games are...",
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: kMarginS),
                            child: Column(
                              children: [
                                Text(
                                  'Hollow Knight',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "The 'Dark Souls' Series",
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "The 'Megaman' series",
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "These days I've actually made my own games, check them out in the projects section!",
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
