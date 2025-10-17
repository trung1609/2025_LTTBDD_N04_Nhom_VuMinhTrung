class Calls {
  final String name, image;
  final String date;
  final String type;

  Calls({
    required this.name,
    required this.image,
    required this.date,
    required this.type,
  });
}

List<Calls> calls = [
  Calls(
    name: "Jenny Wilson",
    image: 'assets/images/user.png',
    date: '10/12/24',
    type: "outgoing",
  ),
  Calls(
    name: "Esther Howard",
    image: 'assets/images/user_2.png',
    date: '19/11/25',
    type: "outgoing",
  ),
  Calls(
    name: "Ralph Edwards",
    image: 'assets/images/user_3.png',
    date: '08/07/25',
    type: 'missed',
  ),
  Calls(
    name: "Jacob Jones",
    image: 'assets/images/user_4.png',
    date: '05/01/25',
    type: 'incoming',
  ),
  Calls(
    name: "Jenny Wilson",
    image: 'assets/images/user.png',
    date: '10/12/24',
    type: "outgoing",
  ),
  Calls(
    name: "Esther Howard",
    image: 'assets/images/user_2.png',
    date: '19/11/25',
    type: "outgoing",
  ),
  Calls(
    name: "Ralph Edwards",
    image: 'assets/images/user_3.png',
    date: '08/07/25',
    type: 'missed',
  ),
  Calls(
    name: "Jacob Jones",
    image: 'assets/images/user_4.png',
    date: '05/01/25',
    type: 'outgoing',
  ),
  Calls(
    name: "Esther Howard",
    image: 'assets/images/user_2.png',
    date: '19/11/25',
    type: "missed",
  ),
  Calls(
    name: "Ralph Edwards",
    image: 'assets/images/user_3.png',
    date: '08/07/25',
    type: 'missed',
  ),
  Calls(
    name: "Jacob Jones",
    image: 'assets/images/user_4.png',
    date: '05/01/25',
    type: 'incoming',
  ),
];
