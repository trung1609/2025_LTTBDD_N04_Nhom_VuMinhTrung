// lib/models/People.dart

class People {
  final String name, image;
  final bool isOnline;
  final DateTime? lastSeen;

  People({
    required this.name,
    required this.image,
    this.isOnline = false,
    this.lastSeen,
  });
}

List<People> peopleData = [
  People(name: "Trung", image: 'assets/images/avatar.jpg', isOnline: true),
  People(
    name: "Esther Howard",
    image: 'assets/images/user_2.png',
    isOnline: true,
  ),
  People(
    name: "Jenny Wilson",
    image: 'assets/images/user.png',
    lastSeen: DateTime.now().subtract(const Duration(minutes: 10)),
  ),
  People(
    name: "Esther Howard",
    image: 'assets/images/user_2.png',
    lastSeen: DateTime.now().subtract(const Duration(hours: 1)),
  ),
  People(
    name: "Ralph Edwards",
    image: 'assets/images/user_3.png',
    lastSeen: DateTime.now().subtract(const Duration(minutes: 45)),
  ),
  People(
    name: "Jacob Jones",
    image: 'assets/images/user_4.png',
    isOnline: true,
  ),
  People(
    name: "Albert Flores",
    image: 'assets/images/user_5.png',
    isOnline: true,
  ),
  People(
    name: "Jenny Wilson",
    image: 'assets/images/user.png',
    lastSeen: DateTime.now().subtract(const Duration(minutes: 1)),
  ),
  People(
    name: "Esther Howard",
    image: 'assets/images/user_2.png',
    lastSeen: DateTime.now().subtract(const Duration(minutes: 20)),
  ),
  People(
    name: "Ralph Edwards",
    image: 'assets/images/user_3.png',
    lastSeen: DateTime.now().subtract(const Duration(minutes: 20)),
  ),
];
