import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/screens/home/views/home_page.dart';
import 'package:myportfolio/screens/projects/views/projects_page.dart';

//TODO: Remove hardcoded values
class BaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade900,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kMargin),
              child: Center(
                child: ConstrainedBox(
                  constraints: new BoxConstraints(
                    minWidth: 10.0,
                    maxWidth: 1000.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      HomePage(),
                      ProjectPage(),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
