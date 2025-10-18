import 'package:chat_app/screen/auth/auth_gate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/screen/welcome/welcome_screen.dart';
import 'package:chat_app/themes.dart';
import 'package:chat_app/l10n/app_localization.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // ValueNotifier để lưu trạng thái dark/light toàn app
  static final ValueNotifier<bool> isDarkNotifier = ValueNotifier(false);
  static final ValueNotifier<Locale> localeNotifier = ValueNotifier(
    const Locale('en'),
  );

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale>(
      valueListenable: localeNotifier,
      builder: (context, locale, _) {
        return ValueListenableBuilder<bool>(
          valueListenable: isDarkNotifier,
          builder: (context, isDark, _) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Chat App',
              theme: lightThemeData(context),
              darkTheme: darkThemeData(context),
              //thay đổi giao diện sáng/tối
              themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
              locale: locale,
              supportedLocales: AppLocalizations.supportedLocales,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              //thay đổi ngôn ngữ
              home: WelcomeScreen(),
            );
          },
        );
      },
    );
  }
}
