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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: const MyDrawer(),
      body: const Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.person_add_alt_1, color: Colors.white),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  AppBar buildAppBar() {
    final t = AppLocalizations.of(context)!;
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: Text(t.chats),
      leading: Builder(
        builder: (context) => IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: const Icon(Icons.menu),
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
          icon: IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PeopleScreen()),
            ),
            icon: const Icon(Icons.people),
          ),
          label: t.people,
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CallsScreen()),
            ),
            icon: const Icon(Icons.call),
          ),
          label: t.calls,
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            ),
            icon: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
          ),
          label: t.profile,
        ),
      ],
    );
  }
}
