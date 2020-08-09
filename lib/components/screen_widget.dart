import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';

class ScreenWidget extends StatelessWidget {
  final Widget child;
  ScreenWidget({@required this.child});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              left: kMargin,
              right: kMargin,
              top: topPagePadding,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
