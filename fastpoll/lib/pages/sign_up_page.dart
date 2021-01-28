import 'package:fastpoll/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpPage extends StatelessWidget {
  static const String route = 'sign_up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.SIGN_UP_TITLE),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: 'Enter a nickname'),
                ),
                // TODO : Afficher ce message uniquement si besoin
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('already exist', style: TextStyle(color: Colors.red),),
                )
              ]),
        ),
      ),
      floatingActionButton: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RaisedButton(
              onPressed: () {},
              child: Text(Strings.SIGN_UP_SUBMIT_LABEL),
            ),
          ],
        ),
      ),
    );
  }
}
