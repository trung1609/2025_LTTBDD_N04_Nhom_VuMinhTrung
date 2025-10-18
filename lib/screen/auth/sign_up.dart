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

  void _signUp() async {
    setState(() {
      _isLoading = true;
    });
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim(),
          );
      if (!mounted) return;
      User? user = userCredential.user;
      if (user != null && !user.emailVerified) {
        await user.sendEmailVerification();
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Verification email sent! Please check your email"),
        ),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => VerifyEmail()),
      );
    } on FirebaseAuthException catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message ?? "Sign failed")),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  goHome(BuildContext context) {
    // Xóa tất cả các màn hình cũ (Login, Signup) và đẩy ChatsScreen vào
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const ChatsScreen()),
      (route) => false, // (route) => false có nghĩa là xóa hết các route cũ
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(t.signup),
      ),
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
            SizedBox(height: kDefaultPadding / 2),
            TextField(
              controller: _passwordController,
              obscureText: !_isPasswordVisible,
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
              child: Text("Already have an account? Sigh in"),
            ),
          ],
        ),
      ),
    );
  }
}
