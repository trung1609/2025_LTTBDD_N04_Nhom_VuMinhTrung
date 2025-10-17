import 'package:flutter/material.dart';
import 'package:chat_app/screen/signin_or_signup/signin_or_signup_screen.dart';

import '../../l10n/app_localization.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      const Spacer(flex: 2),
                      Image.asset('assets/images/welcome_image.png'),
                      const Spacer(flex: 3),
                      Text(
                        t.welcomeTitle,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        t.welcomeSubtitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.color!.withOpacity(0.64),
                        ),
                      ),
                      const Spacer(flex: 4),
                      FittedBox(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const SigninOrSignupScreen(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Text(t.skip),
                              const Icon(Icons.arrow_forward_ios, size: 18),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
