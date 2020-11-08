import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';

class ScreenWidget extends StatelessWidget {
  final Widget child;
  final bool isBackButtonVisible;
  ScreenWidget({@required this.child, this.isBackButtonVisible: false});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isBackButtonVisible)
                Padding(
                  padding: const EdgeInsets.only(
                    top: kMarginS,
                    left: kMarginS,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              Container(
                padding: EdgeInsets.only(
                  left: kMargin,
                  right: kMargin,
                  top: topPageBasePadding,
                ),
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
