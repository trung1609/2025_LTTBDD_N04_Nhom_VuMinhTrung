import 'package:chat_app/constants.dart';
import 'package:chat_app/screen/calls/calls_screen.dart';
import 'package:chat_app/screen/chats/chats_screen.dart';
import 'package:chat_app/screen/people/people_screen.dart';
import 'package:chat_app/screen/profile/profile_screen.dart';
import 'package:chat_app/screen/signin_or_signup/signin_or_signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/main.dart';

import '../l10n/app_localization.dart'; // Để dùng MyApp.isDarkNotifier

class MyDrawer extends StatelessWidget {
  final Function(int) onItemSelected;

  const MyDrawer({super.key, required this.onItemSelected});

  void _logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const SigninOrSignupScreen()),
    );
  }

  void _showLogoutConfirmationDialog(BuildContext context, AppLocalizations t) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(t.logout),
          content: Text(t.logoutConfirmation),
          actions: <Widget>[
            TextButton(
              child: Text(t.cancel),
              onPressed: () {
                Navigator.pop(dialogContext);
              },
            ),

            TextButton(
              child: Text(t.agree),
              onPressed: () {
                _logout(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 25.0)),
              //logo
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? 'assets/images/logo_phenikaa_dark.jpg'
                    : 'assets/images/Logo-DH-Phenikaa-V-Wh.webp',
                height: 146,
              ),
              SizedBox(height: kDefaultPadding * 2),
              //home
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text(
                    t.homeDrawer,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  leading: Icon(Icons.home),
                  onTap: () {
                    onItemSelected(0);
                  },
                ),
              ),
              //people
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text(
                    t.peopleDrawer,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  leading: Icon(Icons.people),
                  onTap: () {
                    onItemSelected(1);
                  },
                ),
              ),
              //calls
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text(
                    t.callsDrawer,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  leading: Icon(Icons.call),
                  onTap: () {
                    onItemSelected(2);
                  },
                ),
              ),
              //profile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text(
                    t.profileDrawer,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  leading: Icon(Icons.person),
                  onTap: () {
                    onItemSelected(3);
                  },
                ),
              ),
            ],
          ),
          //logout
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
            child: ListTile(
              title: Text(
                t.logout,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: Icon(Icons.logout),
              onTap: () {
                _showLogoutConfirmationDialog(context, t);
              },
            ),
          ),
        ],
      ),
    );
  }
}
