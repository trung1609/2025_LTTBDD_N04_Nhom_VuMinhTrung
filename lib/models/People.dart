class People {
  final String name, image, status;
  final bool isOnline;

  People({
    required this.name,
    required this.image,
    required this.status,
    this.isOnline = false,
  });
}

List<People> peopleData = [
  People(
    name: "Esther Howard",
    image: 'assets/images/user_2.png',
    status: 'online',
    isOnline: true,
  ),
  People(
    name: "Alexander Martin",
    image: 'assets/images/user.png',
    status: 'last seen 10 minutes ago',
    isOnline: false,
  ),
  People(
    name: "Ralph Edwards",
    image: 'assets/images/user.png',
    status: 'last seen 1 hour',
    isOnline: false,
  ),
  People(
    name: "Jacob Jones",
    image: 'assets/images/user_4.png',
    status: 'last seen 45 minutes ago',
    isOnline: false,
  ),
  People(
    name: "Esther Howard",
    image: 'assets/images/user_2.png',
    status: 'online',
    isOnline: true,
  ),
  People(
    name: "Alexander Martin",
    image: 'assets/images/user.png',
    status: 'online',
    isOnline: true,
  ),
  People(
    name: "Ralph Edwards",
    image: 'assets/images/user_3.png',
    status: 'last seen recently',
    isOnline: false,
  ),
  People(
    name: "Jacob Jones",
    image: 'assets/images/user_4.png',
    status: 'last seen 20 minutes ago',
    isOnline: false,
  ),
  People(
    name: "Alexander Martin",
    image: 'assets/images/user.png',
    status: 'online',
    isOnline: true,
  ),
  People(
    name: "Ralph Edwards",
    image: 'assets/images/user_3.png',
    status: 'last seen recently',
    isOnline: false,
  ),
  People(
    name: "Jacob Jones",
    image: 'assets/images/user_4.png',
    status: 'last seen 20 minutes ago',
    isOnline: false,
  ),
];
