import 'package:chat_app/constants.dart';
import 'package:chat_app/screen/chats/chats_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  final _auth = FirebaseAuth.instance;
  bool _isEmailVerified = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _checkEmailVerified();
  }

  Future<void> _checkEmailVerified() async {
    User? user = _auth.currentUser;
    await user?.reload();
    setState(() {
      _isEmailVerified = user?.emailVerified ?? false;
    });
    if (_isEmailVerified) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ChatsScreen()),
      );
    }
  }

  Future<void> _resendVerificationEmail() async {
    setState(() {
      _isLoading = true;
    });
    try {
      await _auth.currentUser?.sendEmailVerification();
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Verification email resent! Check your email")),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error sending email: ${e.toString()}")),
      );
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
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Verify Email")),
      body: Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "A verification email has been sent to your email address.\nPlease check your inbox and verify your email.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: kDefaultPadding),
            ElevatedButton(
              onPressed: _checkEmailVerified,
              child: Text("I have verified"),
            ),
            const SizedBox(height: kDefaultPadding),
            ElevatedButton(
              onPressed: _resendVerificationEmail,
              child: Text("Resend Verification Email"),
            ),
          ],
        ),
      ),
    );
  }
}
