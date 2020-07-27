import 'package:flutter/material.dart';

class ProjectTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "title",
              textAlign: TextAlign.left,
            ),
            // Text('This is a super long description of the project how could i make it wrap to the new line after its obviously too big hahahahahahhaha'),
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            )
          ],
        ),
      ],
    );
  }
}
