import 'package:firebase_user_avatar_flutter/services/firebase_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  Future<void> _signInAnonymously(BuildContext context) async {
    try {
      final auth = Provider.of<FirebaseAuthService>(context);
      await auth.signInAnonymously();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            onPressed: () => _signInAnonymously(context),
          ),
        ],
      ),
      body: Center(
        child: Column(children: <Widget>[
          Text('', style: TextStyle(fontSize: 80.0)),
          Text('🚂', style: TextStyle(fontSize: 300.0))
        ]),
      ),
    );
  }
}
