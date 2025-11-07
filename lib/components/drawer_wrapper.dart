import 'package:chat_app/components/drawer.dart';
import 'package:flutter/material.dart';

class DrawerWrapper extends StatelessWidget {
  final Widget child;
  final Function(int) onDrawerItemSelected;

  const DrawerWrapper({
    super.key,
    required this.child,
    required this.onDrawerItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(onItemSelected: onDrawerItemSelected),
      body: child,
    );
  }
}
