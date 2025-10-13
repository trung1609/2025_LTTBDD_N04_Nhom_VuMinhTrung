import 'package:chat_app/components/primary_button.dart';
import 'package:chat_app/screen/chats/chats_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Spacer(flex: 2),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? 'assets/images/Logo_light.png'
                    : 'assets/images/Logo_dark.png',
                height: 146,
              ),

              SizedBox(height: 50),
              PrimaryButton(
                text: "Sign in",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatsScreen()),
                  );
                },
              ),
              SizedBox(height: kDefaultPadding * 1.5),
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Sign up",
                press: () {},
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
