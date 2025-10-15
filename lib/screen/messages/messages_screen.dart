import 'package:chat_app/constants.dart';
import 'package:chat_app/screen/messages/components/body.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localization.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context), body: Body());
  }

  AppBar buildAppBar(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return AppBar(
      backgroundColor: kPrimaryColor,
      titleSpacing: 0,
      title: Row(
        children: [
          CircleAvatar(backgroundImage: AssetImage('assets/images/user_2.png')),
          SizedBox(width: kDefaultPadding * 0.5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Trung", style: TextStyle(fontSize: 16)),
              Text(t.active3mago, style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.local_phone)),
        IconButton(onPressed: () {}, icon: Icon(Icons.videocam_sharp)),
        SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}
