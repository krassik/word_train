import 'package:firebase_user_avatar_flutter/app/auth_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/firebase_auth_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<FirebaseAuthService>(
      builder: (_) => FirebaseAuthService(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.teal),
        home: AuthWidget(),
      ),
    );
  }
}
