import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_list_flutter/feature/auth/verify_email_screen.dart';
import 'package:test_list_flutter/feature/auth/verity_screen.dart';
import 'package:test_list_flutter/feature/auth/welcome_register_screen.dart';
import 'package:test_list_flutter/feature/cryptoList/view/cryptoListsScreen.dart';
import 'package:test_list_flutter/feature/loading_screen/welcome_screen.dart';

class FirebaseStream extends StatelessWidget {
  const FirebaseStream({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Scaffold(body: Center(child: Text('Smth wrong')));
        } else if (snapshot.hasData) {
          if (!snapshot.data!.emailVerified) {
            return VerifyEmailScreen();
          }
          return MyHomePage(
            title: 'My homw',
          );
        } else {
          return MyHomePage(
            title: "test",
          );
        }
      },
    );
  }
}
