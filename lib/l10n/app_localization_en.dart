// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Chat App';

  @override
  String get welcomeTitle => 'Welcome to our freedom messaging app';

  @override
  String get welcomeSubtitle => 'Freedom to talk with anyone in your language';

  @override
  String get skip => 'Skip';

  @override
  String get report => 'Report';

  @override
  String get chats => 'Chats';

  @override
  String get people => 'People';

  @override
  String get calls => 'Calls';

  @override
  String get profile => 'Profile';

  @override
  String get changeTheme => 'Change Theme';

  @override
  String get changeLanguage => 'Change Language';

  @override
  String get signin => 'Sign in';

  @override
  String get signup => 'Sign up';

  @override
  String get recentMessage => 'Recent Message';

  @override
  String get active => 'Active';

  @override
  String get homeDrawer => 'H O M E';

  @override
  String get peopleDrawer => 'P E O P L E';

  @override
  String get callsDrawer => 'C A L L S';

  @override
  String get profileDrawer => 'P R O F I L E';

  @override
  String get logout => 'L O G O U T';

  @override
  String get active3mago => 'Active 3m ago';

  @override
  String get typeMessage => 'Type message';

  @override
  String get nameProfile => 'Name: Vu Minh Trung';

  @override
  String get classProfile => 'Class: Mobile Programming_N04';

  @override
  String get member => 'Member: 1 memeber';

  @override
  String get studentCode => 'Student code';

  @override
  String get phone => 'Phone';

  @override
  String get aboutMe => 'About My Project And My Group';

  @override
  String get detailAboutMe =>
      'This Flutter project is a modern messaging application with a clean and friendly interface.\nIt includes user authentication with Sign in and Sign up screens.\nA welcome page introduces users to the app\'s purpose.\nThe chat list screen displays recent and active conversations.\nUsers can send text, voice messages, images, and videos.\nThe chat screen supports message status indicators and media previews.\nAll UI components are fully responsive and visually consistent.\nThis entire project was developed by myself.';

  @override
  String get justNow => 'Just now';

  @override
  String minutesAgo(Object count) {
    return '${count}m ago';
  }

  @override
  String hoursAgo(Object count) {
    return 'about ${count}h ago';
  }

  @override
  String daysAgo(Object count) {
    return '${count}d ago';
  }

  @override
  String get comeBack => 'Go back';

  @override
  String get all => 'All';

  @override
  String get missed => 'Missed';

  @override
  String get outgoing => 'outgoing';

  @override
  String get incoming => 'incoming';

  @override
  String get missedDetail => 'missed';
}
