import 'package:chat_app/constants.dart';
import 'package:chat_app/screen/messages/components/body.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      titleSpacing: 0,
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/user_2.png'),
          ),
          SizedBox(width: kDefaultPadding * 0.5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Trung", style: TextStyle(fontSize: 16)),
              Text("Active 3m ago", style: TextStyle(fontSize: 12)),
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
