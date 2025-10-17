import 'package:chat_app/constants.dart';
import 'package:chat_app/models/Calls.dart';
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
    final filteredCalls = selectedTab == "All"
        ? calls
        : calls.where((call) => call.type == "missed").toList();
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(t.calls),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add_call))],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: ChoiceChip(
                    label: const Text("All"),
                    selected: selectedTab == "All",
                    onSelected: (_) => setState(() {
                      selectedTab = "All";
                    }),
                    labelStyle: TextStyle(
                      color: selectedTab == "All" ? Colors.white : Colors.black
                    ),
                    selectedColor: kPrimaryColor,
                  ),
                ),
                const SizedBox(height: kDefaultPadding,),
                Expanded(
                  child: ChoiceChip(
                    label: const Text("Missed"),
                    selected: selectedTab == "Missed",
                    onSelected: (_) => setState(() {
                      selectedTab = "Missed";
                    }),
                    labelStyle: TextStyle(
                        color: selectedTab == "Missed" ? Colors.white : Colors.black
                    ),
                    selectedColor: kPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
