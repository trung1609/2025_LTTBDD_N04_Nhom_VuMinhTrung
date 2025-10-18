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
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    void _logout(BuildContext context) async {
      await FirebaseAuth.instance.signOut();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SigninOrSignupScreen()),
      );
    }

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
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatsScreen()),
                    );
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
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PeopleScreen()),
                    );
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
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CallsScreen()),
                    );
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
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()),
                    );
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
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SigninOrSignupScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
