import 'package:chat_app/screen/messages/messages_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/models/Calls.dart';
import 'package:chat_app/constants.dart';

import '../../../l10n/app_localization.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.selectedTab,
    required this.filteredCalls,
    required this.onTabSelected,
  });

  final String selectedTab;
  final List<Calls> filteredCalls;
  final ValueChanged<String> onTabSelected;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    String getTranslatedCallType(String type) {
      switch (type) {
        case 'outgoing':
          return t.outgoing;
        case 'incoming':
          return t.incoming;
        case 'missed':
          return t.missedDetail;
        default:
          return type;
      }
    }

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              // Tabs
              Expanded(
                child: ChoiceChip(
                  label: Text(t.all),
                  selected: selectedTab == "All",
                  onSelected: (_) => onTabSelected("All"),
                  labelStyle: TextStyle(
                    color: selectedTab == "All"
                        ? Colors.white
                        : Theme.of(context).textTheme.bodyMedium!.color,
                  ),
                  selectedColor: kPrimaryColor,
                ),
              ),
              const SizedBox(height: kDefaultPadding),
              Expanded(
                child: ChoiceChip(
                  label: Text(t.missed),
                  selected: selectedTab == "Missed",
                  onSelected: (_) => onTabSelected("Missed"),
                  labelStyle: TextStyle(
                    color: selectedTab == "Missed"
                        ? Colors.white
                        : Theme.of(context).textTheme.bodyMedium!.color,
                  ),
                  selectedColor: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: filteredCalls.length,
            itemBuilder: (context, index) {
              final call = filteredCalls[index];
              final defaultTextColor = Theme.of(
                context,
              ).textTheme.bodyMedium?.color;
              Color textColor = call.type == "missed"
                  ? Colors.red
                  : defaultTextColor!;

              return InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding / 1.75,
                    vertical: kDefaultPadding * 0.75,
                  ),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(call.people.image),
                            radius: 24,
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
                                call.people.name,
                                style: TextStyle(
                                  color: textColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Opacity(
                                    opacity: 0.64,
                                    child: Icon(Icons.call),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: Opacity(
                                      opacity: 0.64,
                                      child: Text(
                                        getTranslatedCallType(call.type),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Opacity(opacity: 0.64, child: Text(call.date)),
                          Opacity(
                            opacity: 0.64,
                            child: IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20),
                                    ),
                                  ),
                                  context: context,
                                  builder: (BuildContext context) {
                                    final screenWidth = MediaQuery.of(
                                      context,
                                    ).size.width;
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        const SizedBox(height: kDefaultPadding),
                                        Center(
                                          child: Container(
                                            height: 5,
                                            width: screenWidth * 0.15,
                                            // set chieu rong bang 15% chieu rong man hinh
                                            decoration: BoxDecoration(
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.primary,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 12),
                                        ListTile(
                                          leading: Icon(Icons.call),
                                          title: Text(t.callBack),
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.message),
                                          title: Text(t.sendMessage),
                                          onTap: () {
                                            Navigator.pop(context);
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    MessagesScreen(
                                                      people: call.people,
                                                    ),
                                              ),
                                            );
                                          },
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.add_call),
                                          title: Text(t.addContact),
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        const Divider(),
                                        ListTile(
                                          leading: Icon(Icons.delete),
                                          title: Text(t.delete),
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        const SizedBox(height: kDefaultPadding),
                                      ],
                                    );
                                  },
                                );
                              },
                              icon: Icon(Icons.info_outline),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
