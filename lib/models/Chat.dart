import 'package:chat_app/models/People.dart';

class Chat {
  final String lastMessage;
  final bool isActive;
  final DateTime time;
  final People people;

  Chat({
    required this.people,
    this.lastMessage = '',
    required this.time,
    this.isActive = false,
  });
}

List<Chat> chatsData = [
  Chat(
    lastMessage: "Hello my friends! I am...",
    time: DateTime.now().subtract(const Duration(minutes: 8)),
    isActive: true,
    people: peopleData[0],
  ),
  Chat(
    lastMessage: "Hope you are doing well...",
    time: DateTime.now().subtract(const Duration(minutes: 3)),
    isActive: false,
    people: peopleData[2],
  ),
  Chat(
    lastMessage: "Hello Abdullah! I am...",
    time: DateTime.now().subtract(const Duration(minutes: 8)),
    isActive: true,
    people: peopleData[1],
  ),
  Chat(
    lastMessage: "Do you have update...",
    time: DateTime.now().subtract(const Duration(days: 5)),
    isActive: false,
    people: peopleData[4],
  ),
  Chat(
    lastMessage: "You’re welcome :)",
    time: DateTime.now().subtract(const Duration(days: 7)),
    isActive: true,
    people: peopleData[5],
  ),
  Chat(
    lastMessage: "Thanks",
    time: DateTime.now().subtract(const Duration(minutes: 3)),
    isActive: false,
    people: peopleData[6],
  ),
  Chat(
    lastMessage: "Hope you are doing well...",
    time: DateTime.now().subtract(const Duration(minutes: 3)),
    isActive: false,
    people: peopleData[7],
  ),
  Chat(
    lastMessage: "Hello Abdullah! I am...",
    time: DateTime.now().subtract(const Duration(minutes: 8)),
    isActive: true,
    people: peopleData[8],
  ),
  Chat(
    lastMessage: "Do you have update...",
    time: DateTime.now().subtract(const Duration(days: 5)),
    isActive: false,
    people: peopleData[9],
  ),
];
