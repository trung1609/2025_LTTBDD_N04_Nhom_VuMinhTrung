import 'package:chat_app/constants.dart';
import 'package:chat_app/screen/chats/chats_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localization.dart';

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
    final t = AppLocalizations.of(context)!;
    setState(() {
      _isLoading = true;
    });
    try {
      await _auth.currentUser?.sendEmailVerification();
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(t.checkVerificationEmail)));
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(t.tooManyRequests)));
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
      appBar: AppBar(centerTitle: true, title: Text(t.verifiedEmail)),
      body: Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(t.verifyMessage, textAlign: TextAlign.center),
            const SizedBox(height: kDefaultPadding),
            ElevatedButton(
              onPressed: _checkEmailVerified,
              child: Text(t.verified),
            ),
            const SizedBox(height: kDefaultPadding),
            ElevatedButton(
              onPressed: _resendVerificationEmail,
              child: Text(t.resendEmail),
            ),
          ],
        ),
      ),
    );
  }
}
