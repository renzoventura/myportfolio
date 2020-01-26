import 'package:flutter/material.dart';
import 'package:myportfolio/pages/about_page.dart';
import 'package:myportfolio/pages/home_page.dart';
import 'package:myportfolio/pages/projects_page.dart';

void main() => runApp(MyApp());

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
          )
        ),
      ),
    );
  }
}
