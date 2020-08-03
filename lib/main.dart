import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/constants/constants.dart';
import 'package:myportfolio/screens/about/views/about_page.dart';
import 'package:myportfolio/screens/home/views/home_page.dart';
import 'package:myportfolio/screens/projects/views/projects_page.dart';

void main() => runApp(MyApp());

//TODO: Set font as Monsterrat
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData.dark();
    ThemeData myTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: GoogleFonts.montserratTextTheme().apply(
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),
    );
    return MaterialApp(
      title: 'Renzo Ventura',
      theme: myTheme,
      home: SafeArea(
        child: Scaffold(
            body: Container(
          padding: EdgeInsets.symmetric(horizontal: kMarginLL),
          child: Center(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: new BoxConstraints(
                  minWidth: 400.0,
                  maxWidth: 1000.0,
                ),
                child: Column(
                  children: <Widget>[
                    HomePage(),
                    ProjectPage(),
//                AboutPage(),
//                AboutPage(),
//                AboutPage(),
                  ],
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
