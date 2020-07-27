import 'package:flutter/material.dart';
import 'package:myportfolio/screens/about/views/about_page.dart';
import 'package:myportfolio/screens/home/views/home_page.dart';
import 'package:myportfolio/screens/projects/views/projects_page.dart';

void main() => runApp(MyApp());

//TODO: Set font as Monsterrat
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Renzo Ventura',
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
          child: Center(
            child: FittedBox(
              child: Column(
                children: <Widget>[
                  HomePage(),
                  ProjectPage(),
                  AboutPage(),
                  AboutPage(),
                  AboutPage(),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
