import 'package:fastpoll/pages/home_page.dart';
import 'package:fastpoll/pages/main_page.dart';
import 'package:fastpoll/pages/sign_up_page.dart';
import 'package:fastpoll/values/shared_preferences_keys.dart';
import 'package:fastpoll/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.lime,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FutureBuilder<SharedPreferences>(
        future: SharedPreferences.getInstance(),
        builder: (context, snap) {
          if (snap.hasData && snap.data.getString(SharedPreferencesKeys.USER_NICKNAME) != null) {
            return MainPage();
          }

          return HomePage();
        },
      ),
      routes: {
        SignUpPage.route: (context) => SignUpPage(),
        HomePage.route: (context) => HomePage(),
        MainPage.route: (context) => MainPage()
      },
    );
  }
}