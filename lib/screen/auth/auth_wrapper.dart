import 'package:chat_app/screen/auth/login_screen.dart';
import 'package:chat_app/screen/auth/verify_email.dart';
import 'package:chat_app/screen/chats/chats_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return LoginScreen();
    } else if (!user.emailVerified) {
      return VerifyEmail();
    } else {
      return ChatsScreen();
    }
  }
}
