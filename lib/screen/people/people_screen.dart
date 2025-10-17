import 'package:chat_app/constants.dart';
import 'package:chat_app/models/People.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localization.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(t.people),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.location_on_outlined,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              "Add People Nearby",
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyMedium!.color,
              ),
            ),
            onTap: () {},
          ),
          Divider(
            thickness: 1,
            indent: 50,
            endIndent: 5,
            color: Theme.of(context).dividerColor,
          ),
          ListTile(
            leading: Icon(
              Icons.person_add_alt_outlined,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              "Add People Nearby",
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyMedium!.color,
              ),
            ),
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
                  padding: EdgeInsets.symmetric(
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
                          padding: EdgeInsets.symmetric(
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
                                people.status,
                                style: TextStyle(
                                  color: people.isOnline
                                      ? kPrimaryColor
                                      : Theme.of(
                                          context,
                                        ).textTheme.bodyMedium!.color,
                                ),
                              ),
                              Divider(thickness: 1, indent: 0, color: Theme.of(context).dividerColor,),
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
