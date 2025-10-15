import 'package:flutter/material.dart';
import 'package:chat_app/screen/welcome/welcome_screen.dart';
import 'package:chat_app/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // 🌙 Dùng ValueNotifier để lưu trạng thái dark/light toàn app
  static final ValueNotifier<bool> isDarkNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isDarkNotifier,
      builder: (context, isDark, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Chat App',
          theme: lightThemeData(context),
          darkTheme: darkThemeData(context),
          themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
          home: const WelcomeScreen(),
        );
      },
    );
  }
}
