import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/components/screen_widget.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/screens/projects/views/projects_page.dart';
import 'package:myportfolio/screens/title/views/title_page.dart';

//TODO: Remove hardcoded values
class BaseScreen extends StatelessWidget {
  static const id = "/";
  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      child: Container(
//        constraints: BoxConstraints(minWidth: minWidthPage, maxWidth: maxWidthPage),
        child: Center(
          child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: minWidthPage, maxWidth: maxWidthPage),

            child: Column(
              children: <Widget>[
                HomePage(),
                ProjectPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
