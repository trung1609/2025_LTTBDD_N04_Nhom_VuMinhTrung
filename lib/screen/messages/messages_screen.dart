import 'package:chat_app/constants.dart';
import 'package:chat_app/models/People.dart';
import 'package:chat_app/screen/messages/components/body.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localization.dart';

class MessagesScreen extends StatelessWidget {
  final People people;

  const MessagesScreen({super.key, required this.people, });
  String _getTranslatedStatus(BuildContext context, People people) {
    final t = AppLocalizations.of(context)!;

    if (people.isOnline) {
      return t.online;
    }

    if (people.lastSeen != null) {
      final now = DateTime.now();
      final difference = now.difference(people.lastSeen!);

      if (difference.inMinutes < 1) {
        return t.lastSeenRecently;
      } else if (difference.inHours < 1) {
        return t.lastSeenMinutesAgo(difference.inMinutes);
      } else if (difference.inHours == 1) {
        return t.lastSeenHourAgo(1);
      } else {
        return t.lastSeenHoursAgo(difference.inHours);
      }
    }
    return "";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(chattingPartnerImage: people.image),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return AppBar(
      backgroundColor: kPrimaryColor,
      titleSpacing: 0,
      title: Row(
        children: [
          CircleAvatar(backgroundImage: AssetImage(people.image)),
          SizedBox(width: kDefaultPadding * 0.5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(people.name, style: TextStyle(fontSize: 16)),
              Text(_getTranslatedStatus(context, people), style: TextStyle(fontSize: 12)),
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
