import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localization_en.dart';
import 'app_localization_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Chat App'**
  String get appTitle;

  /// No description provided for @welcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to our freedom messaging app'**
  String get welcomeTitle;

  /// No description provided for @welcomeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Freedom to talk with anyone in your language'**
  String get welcomeSubtitle;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get report;

  /// No description provided for @chats.
  ///
  /// In en, this message translates to:
  /// **'Chats'**
  String get chats;

  /// No description provided for @people.
  ///
  /// In en, this message translates to:
  /// **'People'**
  String get people;

  /// No description provided for @calls.
  ///
  /// In en, this message translates to:
  /// **'Calls'**
  String get calls;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @changeTheme.
  ///
  /// In en, this message translates to:
  /// **'Change Theme'**
  String get changeTheme;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get changeLanguage;

  /// No description provided for @signin.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signin;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signup;

  /// No description provided for @recentMessage.
  ///
  /// In en, this message translates to:
  /// **'Recent Message'**
  String get recentMessage;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @homeDrawer.
  ///
  /// In en, this message translates to:
  /// **'H O M E'**
  String get homeDrawer;

  /// No description provided for @peopleDrawer.
  ///
  /// In en, this message translates to:
  /// **'P E O P L E'**
  String get peopleDrawer;

  /// No description provided for @callsDrawer.
  ///
  /// In en, this message translates to:
  /// **'C A L L S'**
  String get callsDrawer;

  /// No description provided for @profileDrawer.
  ///
  /// In en, this message translates to:
  /// **'P R O F I L E'**
  String get profileDrawer;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'L O G O U T'**
  String get logout;

  /// No description provided for @active3mago.
  ///
  /// In en, this message translates to:
  /// **'Active 3m ago'**
  String get active3mago;

  /// No description provided for @typeMessage.
  ///
  /// In en, this message translates to:
  /// **'Type message'**
  String get typeMessage;

  /// No description provided for @nameProfile.
  ///
  /// In en, this message translates to:
  /// **'Name: Vu Minh Trung'**
  String get nameProfile;

  /// No description provided for @classProfile.
  ///
  /// In en, this message translates to:
  /// **'Class: Mobile Programming_N04'**
  String get classProfile;

  /// No description provided for @member.
  ///
  /// In en, this message translates to:
  /// **'Member: 1 memeber'**
  String get member;

  /// No description provided for @studentCode.
  ///
  /// In en, this message translates to:
  /// **'Student code'**
  String get studentCode;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @aboutMe.
  ///
  /// In en, this message translates to:
  /// **'About My Project And My Group'**
  String get aboutMe;

  /// No description provided for @detailAboutMe.
  ///
  /// In en, this message translates to:
  /// **'This Flutter project is a modern messaging application with a clean and friendly interface.\nIt includes user authentication with Sign in and Sign up screens.\nA welcome page introduces users to the app\'s purpose.\nThe chat list screen displays recent and active conversations.\nUsers can send text, voice messages, images, and videos.\nThe application also allows users to track call logs and a few other functions.\nAll UI components are fully responsive and visually consistent.\nThis entire project was developed by myself.'**
  String get detailAboutMe;

  /// No description provided for @justNow.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get justNow;

  /// No description provided for @minutesAgo.
  ///
  /// In en, this message translates to:
  /// **'{count}m ago'**
  String minutesAgo(Object count);

  /// No description provided for @hoursAgo.
  ///
  /// In en, this message translates to:
  /// **'about {count}h ago'**
  String hoursAgo(Object count);

  /// No description provided for @daysAgo.
  ///
  /// In en, this message translates to:
  /// **'{count}d ago'**
  String daysAgo(Object count);

  /// No description provided for @comeBack.
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get comeBack;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @missed.
  ///
  /// In en, this message translates to:
  /// **'Missed'**
  String get missed;

  /// No description provided for @outgoing.
  ///
  /// In en, this message translates to:
  /// **'outgoing'**
  String get outgoing;

  /// No description provided for @incoming.
  ///
  /// In en, this message translates to:
  /// **'incoming'**
  String get incoming;

  /// No description provided for @missedDetail.
  ///
  /// In en, this message translates to:
  /// **'missed'**
  String get missedDetail;

  /// No description provided for @callBack.
  ///
  /// In en, this message translates to:
  /// **'Call back'**
  String get callBack;

  /// No description provided for @sendMessage.
  ///
  /// In en, this message translates to:
  /// **'Send message'**
  String get sendMessage;

  /// No description provided for @addContact.
  ///
  /// In en, this message translates to:
  /// **'Add new contact'**
  String get addContact;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @addPeople.
  ///
  /// In en, this message translates to:
  /// **'Add People Nearby'**
  String get addPeople;

  /// No description provided for @addContacts.
  ///
  /// In en, this message translates to:
  /// **'Add from Contacts'**
  String get addContacts;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @newContact.
  ///
  /// In en, this message translates to:
  /// **'New contact'**
  String get newContact;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @mobile.
  ///
  /// In en, this message translates to:
  /// **'mobile'**
  String get mobile;

  /// No description provided for @addPhone.
  ///
  /// In en, this message translates to:
  /// **'add phone'**
  String get addPhone;

  /// No description provided for @online.
  ///
  /// In en, this message translates to:
  /// **'online'**
  String get online;

  /// No description provided for @lastSeenRecently.
  ///
  /// In en, this message translates to:
  /// **'last seen recently'**
  String get lastSeenRecently;

  /// No description provided for @lastSeenMinutesAgo.
  ///
  /// In en, this message translates to:
  /// **'last seen {count} minutes ago'**
  String lastSeenMinutesAgo(Object count);

  /// No description provided for @lastSeenHourAgo.
  ///
  /// In en, this message translates to:
  /// **'last seen {count} hour ago'**
  String lastSeenHourAgo(Object count);

  /// No description provided for @lastSeenHoursAgo.
  ///
  /// In en, this message translates to:
  /// **'last seen {count} hours ago'**
  String lastSeenHoursAgo(Object count);

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// No description provided for @forgotPassWord.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassWord;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? Sign up'**
  String get dontHaveAccount;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? Sign in'**
  String get alreadyHaveAccount;

  /// No description provided for @enterEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enterEmail;

  /// No description provided for @sendResetEmail.
  ///
  /// In en, this message translates to:
  /// **'Send Reset Password'**
  String get sendResetEmail;

  /// No description provided for @verifyMessage.
  ///
  /// In en, this message translates to:
  /// **'A verification email has been sent to your email address.\nPlease check your inbox and verify your email.'**
  String get verifyMessage;

  /// No description provided for @verified.
  ///
  /// In en, this message translates to:
  /// **'I have verified'**
  String get verified;

  /// No description provided for @resendEmail.
  ///
  /// In en, this message translates to:
  /// **'Resend Verification Email'**
  String get resendEmail;

  /// No description provided for @verifiedEmail.
  ///
  /// In en, this message translates to:
  /// **'Verify Email'**
  String get verifiedEmail;

  /// No description provided for @emailInvalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address'**
  String get emailInvalid;

  /// No description provided for @passwordTooShort.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters long'**
  String get passwordTooShort;

  /// No description provided for @passwordMissingUppercase.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one uppercase letter'**
  String get passwordMissingUppercase;

  /// No description provided for @passwordMissingLowercase.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one lowercase letter'**
  String get passwordMissingLowercase;

  /// No description provided for @passwordMissingDigit.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one number'**
  String get passwordMissingDigit;

  /// No description provided for @passwordMissingSpecial.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one special character'**
  String get passwordMissingSpecial;

  /// No description provided for @fillAllFields.
  ///
  /// In en, this message translates to:
  /// **'Please fill in all fields'**
  String get fillAllFields;

  /// No description provided for @emailInUse.
  ///
  /// In en, this message translates to:
  /// **'This email address is already in use'**
  String get emailInUse;

  /// No description provided for @userNotFound.
  ///
  /// In en, this message translates to:
  /// **'No user found for that email'**
  String get userNotFound;

  /// No description provided for @wrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Wrong password provided for that user'**
  String get wrongPassword;

  /// No description provided for @loginFailed.
  ///
  /// In en, this message translates to:
  /// **'Login failed. Please check your credentials'**
  String get loginFailed;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, please try again'**
  String get somethingWentWrong;

  /// No description provided for @verificationEmailSent.
  ///
  /// In en, this message translates to:
  /// **'Verification email sent! Please check your email'**
  String get verificationEmailSent;

  /// No description provided for @resetEmailSent.
  ///
  /// In en, this message translates to:
  /// **'Password reset email sent! Check your inbox'**
  String get resetEmailSent;

  /// No description provided for @resetEmailFailed.
  ///
  /// In en, this message translates to:
  /// **'Error sending reset email'**
  String get resetEmailFailed;

  /// No description provided for @sendPassword.
  ///
  /// In en, this message translates to:
  /// **'Password reset email sent! Check your inbox'**
  String get sendPassword;

  /// No description provided for @errorSendPassword.
  ///
  /// In en, this message translates to:
  /// **'Error sending reset email'**
  String get errorSendPassword;

  /// No description provided for @checkVerificationEmail.
  ///
  /// In en, this message translates to:
  /// **'Verification email resent! Check your email'**
  String get checkVerificationEmail;

  /// No description provided for @tooManyRequests.
  ///
  /// In en, this message translates to:
  /// **'Too many requests have been sent. Please wait a moment before trying again.'**
  String get tooManyRequests;

  /// No description provided for @logoutConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get logoutConfirmation;

  /// No description provided for @agree.
  ///
  /// In en, this message translates to:
  /// **'Agree'**
  String get agree;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'vi':
      return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
