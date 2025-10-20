import 'dart:math';

import 'package:chat_app/constants.dart';
import 'package:chat_app/models/Calls.dart';
import 'package:chat_app/screen/calls/components/body.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localization.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  String selectedTab = "All";

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final filteredCalls = selectedTab == "All"
        ? calls
        : calls.where((call) => call.type == "missed").toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        title: Text(t.calls),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add_call))],
      ),
      body: Body(
        selectedTab: selectedTab,
        filteredCalls: filteredCalls,
        onTabSelected: (tab) {
          setState(() {
            selectedTab = tab;
          });
        },
      ),
    );
  }
}
