import 'package:fastpoll/pages/sign_up_page.dart';
import 'package:fastpoll/values/images.dart';
import 'package:fastpoll/values/strings.dart';
import 'package:fastpoll/values/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatelessWidget {
  static const String route = 'main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.APP_NAME),
      ),
      body: Center(
        child: Text('Main page'),
      ),
    );
  }
}
