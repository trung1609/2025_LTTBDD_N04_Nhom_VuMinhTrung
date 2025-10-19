import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/components/drawer.dart';
import 'package:chat_app/screen/calls/calls_screen.dart';
import 'package:chat_app/screen/people/people_screen.dart';
import 'package:chat_app/screen/profile/profile_screen.dart';
import 'package:chat_app/main.dart';
import '../../l10n/app_localization.dart';
import 'components/body.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectedIndex = 0;
  late final List<Widget> _pages;

  void _onDrawerItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    onItemSelected(index);
  }

  void onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
    _pages = [
      Body(onItemSelected: _onDrawerItemTapped),
      const PeopleScreen(),
      const CallsScreen(),
      const ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      floatingActionButton: _selectedIndex == 1
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: kPrimaryColor,
              child: const Icon(Icons.person_add, color: Colors.white),
            )
          : null,
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    final t = AppLocalizations.of(context)!;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.chat_bubble),
          label: t.chats,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.people),
          label: t.people,
        ),
        BottomNavigationBarItem(icon: const Icon(Icons.call), label: t.calls),
        BottomNavigationBarItem(
          icon: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.jpg'),
          ),
          label: t.profile,
        ),
      ],
    );
  }
}
