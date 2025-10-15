import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).drawerTheme.backgroundColor,
      child: Column(
        children: [
          //logo
          DrawerHeader(
            child: Center(
              child: Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? 'assets/images/Logo-DH-Phenikaa-V-Wh.webp'
                    : 'assets/images/logo_phenikaa_dark.jpg',
                height: 146,
              ),
            ),
          ),
          //home list title
        ],
      ),
    );
  }
}
