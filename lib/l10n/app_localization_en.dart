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
      'This Flutter project is a modern messaging application with a clean and friendly interface.\nIt includes user authentication with Sign in and Sign up screens.\nA welcome page introduces users to the app\'s purpose.\nThe chat list screen displays recent and active conversations.\nUsers can send text, voice messages, images, and videos.\nThe application also allows users to track call logs and a few other functions.\nAll UI components are fully responsive and visually consistent.\nThis entire project was developed by myself.';

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

  @override
  String get callBack => 'Call back';

  @override
  String get sendMessage => 'Send message';

  @override
  String get addContact => 'Add new contact';

  @override
  String get delete => 'Delete';

  @override
  String get addPeople => 'Add People Nearby';

  @override
  String get addContacts => 'Add from Contacts';

  @override
  String get cancel => 'Cancel';

  @override
  String get newContact => 'New contact';

  @override
  String get create => 'Create';

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get mobile => 'mobile';

  @override
  String get addPhone => 'add phone';

  @override
  String get online => 'online';

  @override
  String get lastSeenRecently => 'last seen recently';

  @override
  String lastSeenMinutesAgo(Object count) {
    return 'last seen $count minutes ago';
  }

  @override
  String lastSeenHourAgo(Object count) {
    return 'last seen $count hour ago';
  }

  @override
  String lastSeenHoursAgo(Object count) {
    return 'last seen $count hours ago';
  }

  @override
  String get password => 'Password';

  @override
  String get resetPassword => 'Reset Password';

  @override
  String get forgotPassWord => 'Forgot Password?';

  @override
  String get dontHaveAccount => 'Don\'t have an account? Sign up';

  @override
  String get alreadyHaveAccount => 'Already have an account? Sign in';

  @override
  String get enterEmail => 'Enter your email';

  @override
  String get sendResetEmail => 'Send Reset Password';

  @override
  String get verifyMessage =>
      'A verification email has been sent to your email address.\nPlease check your inbox and verify your email.';

  @override
  String get verified => 'I have verified';

  @override
  String get resendEmail => 'Resend Verification Email';

  @override
  String get verifiedEmail => 'Verify Email';

  @override
  String get emailInvalid => 'Please enter a valid email address';

  @override
  String get passwordTooShort => 'Password must be at least 8 characters long';

  @override
  String get passwordMissingUppercase =>
      'Password must contain at least one uppercase letter';

  @override
  String get passwordMissingLowercase =>
      'Password must contain at least one lowercase letter';

  @override
  String get passwordMissingDigit =>
      'Password must contain at least one number';

  @override
  String get passwordMissingSpecial =>
      'Password must contain at least one special character';

  @override
  String get fillAllFields => 'Please fill in all fields';

  @override
  String get emailInUse => 'This email address is already in use';

  @override
  String get userNotFound => 'No user found for that email';

  @override
  String get wrongPassword => 'Wrong password provided for that user';

  @override
  String get loginFailed => 'Login failed. Please check your credentials';

  @override
  String get somethingWentWrong => 'Something went wrong, please try again';

  @override
  String get verificationEmailSent =>
      'Verification email sent! Please check your email';

  @override
  String get resetEmailSent => 'Password reset email sent! Check your inbox';

  @override
  String get resetEmailFailed => 'Error sending reset email';

  @override
  String get sendPassword => 'Password reset email sent! Check your inbox';

  @override
  String get errorSendPassword => 'Error sending reset email';

  @override
  String get checkVerificationEmail =>
      'Verification email resent! Check your email';

  @override
  String get tooManyRequests =>
      'Too many requests have been sent. Please wait a moment before trying again.';

  @override
  String get logoutConfirmation => 'Are you sure you want to log out?';

  @override
  String get agree => 'Agree';
}
