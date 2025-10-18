import 'package:chat_app/constants.dart';
import 'package:chat_app/screen/auth/forgot_password.dart';
import 'package:chat_app/screen/auth/sign_up.dart';
import 'package:chat_app/screen/auth/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chat_app/screen/chats/chats_screen.dart';

import '../../l10n/app_localization.dart';

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

  void _signIn() async {
    setState(() {
      _isLoading = true;
    });
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      User? user = userCredential.user;
      if (user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => VerifyEmail()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ChatsScreen()),
        );
      }
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Signin Successful")));
      goHome(context);
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message ?? "Something went wrong")),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
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
                labelText: "Password",
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
                child: Text("Forgot Password?"),
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
              child: Text("Don't have an account? Sigh up"),
            ),
          ],
        ),
      ),
    );
  }
}
