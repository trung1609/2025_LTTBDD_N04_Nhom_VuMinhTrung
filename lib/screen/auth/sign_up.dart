import 'package:chat_app/constants.dart';
import 'package:chat_app/screen/auth/login_screen.dart';
import 'package:chat_app/screen/auth/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chat_app/screen/chats/chats_screen.dart';

import '../../l10n/app_localization.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool _isLoading = false;
  bool _isPasswordVisible = false;

  String? _validateInput(String email, String password, AppLocalizations t) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(email)) {
      return t.emailInvalid;
    }

    if (password.length < 8) {
      return t.passwordTooShort;
    }
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return t.passwordMissingUppercase;
    }
    if (!password.contains(RegExp(r'[a-z]'))) {
      return t.passwordMissingLowercase;
    }
    if (!password.contains(RegExp(r'[0-9]'))) {
      return t.passwordMissingDigit;
    }
    if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return t.passwordMissingSpecial;
    }

    return null;
  }

  void _signUp() async {
    final t = AppLocalizations.of(context)!;
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    final validationError = _validateInput(email, password, t);
    if (validationError != null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(validationError)));
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      if (!mounted) return;
      User? user = userCredential.user;
      if (user != null && !user.emailVerified) {
        await user.sendEmailVerification();
      }
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(t.verificationEmailSent)));
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const VerifyEmail()),
      );
    } on FirebaseAuthException catch (e) {
      if (!mounted) return;
      String errorMessage;
      switch (e.code) {
        case 'email-already-in-use':
          errorMessage = t.emailInUse;
          break;
        default:
          errorMessage = t.somethingWentWrong;
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

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(t.signup)),
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
            SizedBox(height: kDefaultPadding / 2),
            TextField(
              controller: _passwordController,
              obscureText: !_isPasswordVisible,
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
            ),
            SizedBox(height: kDefaultPadding),
            _isLoading
                ? CircularProgressIndicator()
                : ElevatedButton(onPressed: _signUp, child: Text(t.signup)),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(t.alreadyHaveAccount),
            ),
          ],
        ),
      ),
    );
  }
}
