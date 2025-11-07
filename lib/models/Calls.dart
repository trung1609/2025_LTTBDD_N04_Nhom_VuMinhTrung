import 'package:chat_app/models/People.dart';

class Calls {
  final People people;
  final String date;
  final String type;

  Calls({required this.people, required this.date, required this.type});
}

List<Calls> calls = [
  Calls(people: peopleData[0], date: '16/09/25', type: "missed"),
  Calls(people: peopleData[2], date: '10/12/24', type: "outgoing"),
  Calls(people: peopleData[1], date: '19/11/25', type: "outgoing"),
  Calls(people: peopleData[4], date: '08/07/25', type: 'missed'),
  Calls(people: peopleData[5], date: '05/01/25', type: 'incoming'),
  Calls(people: peopleData[2], date: '10/12/24', type: "outgoing"),
  Calls(people: peopleData[1], date: '19/11/25', type: "outgoing"),
  Calls(people: peopleData[4], date: '08/07/25', type: 'missed'),
  Calls(people: peopleData[5], date: '05/01/25', type: 'outgoing'),
  Calls(people: peopleData[1], date: '19/11/25', type: "missed"),
  Calls(people: peopleData[4], date: '08/07/25', type: 'missed'),
  Calls(people: peopleData[5], date: '05/01/25', type: 'incoming'),
];
