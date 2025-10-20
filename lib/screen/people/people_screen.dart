import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/models/People.dart';
import '../../l10n/app_localization.dart';
import 'components/new_contact.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    String getTranslatedStatus(People people) {
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        title: Text(t.people),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                context: context,
                builder: (BuildContext context) => const NewContactSheet(),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(
              Icons.location_on_outlined,
              color: kPrimaryColor,
            ),
            title: Text(t.addPeople, style: TextStyle(color: kPrimaryColor)),
            onTap: () {},
          ),
          Divider(
            thickness: 1,
            indent: 50,
            endIndent: 5,
            color: Theme.of(context).dividerColor,
          ),

          ListTile(
            leading: const Icon(
              Icons.person_add_alt_outlined,
              color: kPrimaryColor,
            ),
            title: Text(t.addContacts, style: TextStyle(color: kPrimaryColor)),
            onTap: () {},
          ),
          Divider(
            thickness: 1,
            indent: 50,
            endIndent: 5,
            color: Theme.of(context).dividerColor,
          ),

          Expanded(
            child: ListView.builder(
              itemCount: peopleData.length,
              itemBuilder: (context, index) {
                final people = peopleData[index];

                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding / 1.75,
                    vertical: kDefaultPadding * 0.75,
                  ),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(people.image),
                            radius: 25,
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                people.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(
                                    context,
                                  ).textTheme.bodyMedium!.color,
                                ),
                              ),
                              Text(
                                getTranslatedStatus(people),
                                style: TextStyle(
                                  color: people.isOnline
                                      ? kPrimaryColor
                                      : Theme.of(
                                          context,
                                        ).textTheme.bodyMedium!.color,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
