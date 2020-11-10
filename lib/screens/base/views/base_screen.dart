import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/screens/projects/views/project_list_page.dart';
import 'package:myportfolio/screens/title/views/home_page.dart';

class BaseScreen extends StatefulWidget {
  static const id = "/";

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  double offset = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
      setState(() => offset = scrollNotification.metrics.pixels);
      return true;
    }
    return Material(
      child: DelayedDisplay(
        fadingDuration : 	const Duration(milliseconds: 2000),
        slidingCurve: Curves.decelerate,
        child: NotificationListener<ScrollNotification>(
          onNotification: updateOffsetAccordingToScroll,
          child: ScrollConfiguration(
            behavior: NoScrollGlow(),
            child: Stack(
              children: <Widget>[
                //TODO: ADD BACKGROUND HERE
                // Positioned(
                //   top: -.25 * offset,
                //   child: FadeInImage.memoryNetwork(
                //     placeholder: kTransparentImage,
                //     image: url,
                //     height: height,
                //     width: width,
                //     fit: BoxFit.fitWidth,
                //   ),
                // ),
                Positioned(
                  top: -.25 * offset,
                  child: SizedBox(
                    height: height,
                    width: width,
                    child: Align(
                      alignment: Alignment(0, 0),
                      child: HomePage(),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: height * 0.82),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: slideUpCorners,
                            topRight: slideUpCorners,
                          ),
                          color: defaultColor,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: kMarginXXXXL,
                        ),
                        width: width,
                        child: ProjectListPage(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NoScrollGlow extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
