import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';


class ProjectPage extends StatelessWidget {
  const ProjectPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "Projects",
            style: kTitleTextStyle,
          ),
          ProjectItems(),
        ],
      ),
    );
  }
}


class ProjectItems extends StatelessWidget {
  const ProjectItems({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.grey,
      ),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text("Title"),
              Text("Long discription of the project"),
            ],

          ),
            // Container(
            //   height: 200,
            //   width: 200,
            //   color: Colors.red,
            // )
        ],
      ),
    );
  }
}