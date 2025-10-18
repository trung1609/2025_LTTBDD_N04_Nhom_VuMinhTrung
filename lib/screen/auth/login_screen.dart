import 'package:chat_app/constants.dart';
import 'package:chat_app/screen/auth/forgot_password.dart';
import 'package:chat_app/screen/auth/sign_up.dart';
import 'package:chat_app/screen/auth/verify_email.dart';
import 'package:chat_app/screen/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chat_app/screen/chats/chats_screen.dart';

import '../../l10n/app_localization.dart';
import 'auth_wrapper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool _isLoading = false;
  bool _isPasswordVisible = false;

  String? _validateLoginInput(String email, String password) {
    if (email.isEmpty || password.isEmpty) {
      return "Please enter both email and password";
    }
    return null;
  }

  void _signIn() async {
    final t = AppLocalizations.of(context)!;
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(t.fillAllFields)));
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AuthWrapper()),
      );
    } on FirebaseAuthException catch (e) {
      if (!mounted) return;
      String errorMessage;
      switch (e.code) {
        case 'user-not-found':
          errorMessage = t.userNotFound;
          break;
        case 'wrong-password':
          errorMessage = t.wrongPassword;
          break;
        default:
          errorMessage = t.loginFailed;
      }
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(errorMessage)));
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  goHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChatsScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(t.signin)),
      body: Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_phenikaa_dark.jpg', height: 146),
            const SizedBox(height: kDefaultPadding),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: kDefaultPadding / 2),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: t.password,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
              ),
              obscureText: !_isPasswordVisible,
            ),
            Align(
              alignment: AlignmentGeometry.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
                child: Text(t.forgotPassWord),
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            _isLoading
                ? CircularProgressIndicator()
                : ElevatedButton(onPressed: _signIn, child: Text(t.signin)),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              },
              child: Text(t.dontHaveAccount),
            ),
          ],
        ),
      ),
    );
  }
}
