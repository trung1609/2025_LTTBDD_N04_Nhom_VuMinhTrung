import 'package:chat_app/components/filled_outline_button.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/models/Chat.dart';
import 'package:chat_app/screen/messages/messages_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/drawer.dart';
import '../../../l10n/app_localization.dart';
import '../../../main.dart';
import '../chat_card.dart';

class Body extends StatelessWidget {
  final Function(int) onItemSelected;

  const Body({super.key, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      drawer: MyDrawer(onItemSelected: onItemSelected),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(t.chats),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          // Nút bật/tắt theme
          IconButton(
            icon: Icon(
              MyApp.isDarkNotifier.value ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: () {
              MyApp.isDarkNotifier.value = !MyApp.isDarkNotifier.value;
            },
          ),
          //Nut switch language
          IconButton(
            icon: Icon(Icons.language),
            tooltip: t.changeLanguage,
            onPressed: () {
              if (MyApp.localeNotifier.value.languageCode == 'en') {
                MyApp.localeNotifier.value = const Locale('vi');
              } else {
                MyApp.localeNotifier.value = const Locale('en');
              }
            },
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),

      body: Column(
        children: [
          Container(
            color: kPrimaryColor,
            child: Row(
              children: [
                FillOutlineButton(press: () {}, text: t.recentMessage),
                FillOutlineButton(
                  press: () {},
                  text: t.active,
                  isFilled: false,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chatsData.length,
              itemBuilder: (context, index) {
                final chat = chatsData[index];
                return ChatCard(
                  chat: chat,
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          MessagesScreen(people: chat.people),
                    ),
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
