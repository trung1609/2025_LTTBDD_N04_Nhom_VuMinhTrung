import 'package:chat_app/components/drawer.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/screen/calls/calls_screen.dart';
import 'package:chat_app/screen/people/people_screen.dart';
import 'package:chat_app/screen/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class ChatsScreen extends StatefulWidget {
  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: MyDrawer(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: Icon(Icons.person_add_alt_1, color: Colors.white),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
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
        BottomNavigationBarItem(
          icon: IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble)),
          label: "Chats",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PeopleScreen()),
            ),
            icon: Icon(Icons.people),
          ),
          label: "People",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CallsScreen()),
            ),
            icon: Icon(Icons.call),
          ),
          label: "Calls",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            ),
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
          ),
          label: "Profile",
        ),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: Text("Chats"),
      leading: Builder(
        builder: (context) => IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
    );
  }
}
