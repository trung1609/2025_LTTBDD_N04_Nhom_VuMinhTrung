import 'package:chat_app/components/primary_button.dart';
import 'package:chat_app/screen/chats/chats_screen.dart';
import 'package:chat_app/screen/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../l10n/app_localization.dart';

class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Spacer(flex: 2),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? 'assets/images/Logo-DH-Phenikaa-V-Wh.webp'
                    : 'assets/images/logo_phenikaa_dark.jpg',
                height: 146,
              ),

              SizedBox(height: 50),
              PrimaryButton(
                text: t.signin,
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
                text: t.signup,
                press: () {},
              ),
              Spacer(flex: 2),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()),
                  );
                },
                child: Text(t.comeBack,style: TextStyle(fontSize: 16.0),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
