import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/screens/about/views/about_page.dart';
import 'package:myportfolio/screens/base/views/base_screen.dart';
import 'package:myportfolio/screens/projects/views/project_screen.dart';

void main() => runApp(MyApp());

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
      initialRoute: BaseScreen.id,
      routes: {
        BaseScreen.id: (context) => BaseScreen(),
        AboutPage.id: (context) => AboutPage(),
        ProjectScreen.id: (context) => ProjectScreen(),
      },
    );
  }
}
