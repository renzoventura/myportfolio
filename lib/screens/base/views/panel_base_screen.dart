import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/components/hero_text.dart';
import 'package:myportfolio/components/screen_widget.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/screens/about/views/about_page.dart';
import 'package:myportfolio/screens/projects/views/project_list_page.dart';
import 'package:myportfolio/screens/title/components/contact_detail_item.dart';
import 'package:myportfolio/screens/title/views/home_page.dart';
import 'package:myportfolio/service/image_utils.dart';
import 'package:myportfolio/service/launch_url_service.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class BaseScreen extends StatefulWidget {
  static const id = "/";

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  double offset = 0;
  PanelController panelController = PanelController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Material(
      child: Listener(
        onPointerSignal: (pointerSignal) {
          if (pointerSignal is PointerScrollEvent) {
            // do something when scrolled
            print(pointerSignal);
            if (pointerSignal.scrollDelta.dy < 0) {

              print("going up");
              if(panelController.isPanelClosed) panelController.open();
            } else{
              print("going down");
              if(panelController.isPanelOpen) panelController.close();
            }
          }
        },
        child: Stack(
          children: <Widget>[
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
            SlidingUpPanel(
              controller: panelController,
              minHeight: 30,
              backdropEnabled: true,
              backdropTapClosesPanel: true,
              parallaxEnabled: true,
              panelSnapping: true,
              color: Colors.transparent,
              panel: Container(
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
              ),
            )
          ],
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
