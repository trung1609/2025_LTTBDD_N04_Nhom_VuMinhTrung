import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/components/drawer.dart';
import 'package:chat_app/screen/calls/calls_screen.dart';
import 'package:chat_app/screen/people/people_screen.dart';
import 'package:chat_app/screen/profile/profile_screen.dart';
import 'package:chat_app/main.dart'; // ⚡ Thêm import này để dùng MyApp.isDarkNotifier
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
      drawer: const MyDrawer(), // Không cần truyền gì thêm
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
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: const Text("Chats"),
      leading: Builder(
        builder: (context) => IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: const Icon(Icons.menu),
        ),
      ),
      actions: [
        // 🌗 Nút bật/tắt theme
        IconButton(
          icon: Icon(
            MyApp.isDarkNotifier.value
                ? Icons.light_mode
                : Icons.dark_mode,
          ),
          onPressed: () {
            MyApp.isDarkNotifier.value = !MyApp.isDarkNotifier.value;
          },
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble),
          label: "Chats",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PeopleScreen()),
            ),
            icon: const Icon(Icons.people),
          ),
          label: "People",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CallsScreen()),
            ),
            icon: const Icon(Icons.call),
          ),
          label: "Calls",
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
          label: "Profile",
        ),
      ],
    );
  }
}
