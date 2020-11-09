import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/components/screen_widget.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/screens/projects/views/project_list_page.dart';
import 'package:myportfolio/screens/title/views/home_page.dart';

class BaseScreen extends StatelessWidget {
  static const id = "/";
  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: minWidthPage,
            maxWidth: maxWidthPage,
          ),
          child: Column(
            children: <Widget>[
              HomePage(),
              ProjectListPage(),
            ],
          ),
        ),
      ),
    );
  }
}
