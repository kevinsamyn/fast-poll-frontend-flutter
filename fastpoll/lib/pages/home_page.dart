import 'package:fastpoll/pages/sign_up_page.dart';
import 'package:fastpoll/values/images.dart';
import 'package:fastpoll/values/strings.dart';
import 'package:fastpoll/values/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  static const String route = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.APP_NAME),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Images.APP_ICON,
            Text(
              Strings.APP_BASELINE,
              style: TextStyles.appBaseline(context),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RaisedButton(
              onPressed: () {
                _navigateToSignIn(context);
              },
              child: Text("Sign in"),
            ),
            RaisedButton(
              onPressed: () {
                _navigateToSignUp(context);
              },
              child: Text(Strings.SIGN_UP_TITLE),
              textColor: Colors.red,
              color: Colors.lime,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Permet de diriger l'utilisateur vers la page d'inscription
  void _navigateToSignUp(BuildContext context) {
    Navigator.pushNamed(context, SignUpPage.route);
  }

  /// Permet de diriger l'utilisateur vers la page de connexion
  void _navigateToSignIn(BuildContext context) {
    // TODO: implement navigation
    throw UnimplementedError();
  }
}
