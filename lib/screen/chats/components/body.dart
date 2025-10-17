import 'package:chat_app/components/filled_outline_button.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/models/Chat.dart';
import 'package:chat_app/screen/messages/messages_screen.dart';
import 'package:flutter/material.dart';

import '../../../l10n/app_localization.dart';
import '../chat_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Column(
      children: [
        Container(
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: t.recentMessage),
              FillOutlineButton(press: () {}, text: t.active, isFilled: false),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessagesScreen()),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
