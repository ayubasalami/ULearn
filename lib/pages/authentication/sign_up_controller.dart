import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearn/pages/authentication/notifier/register_notifier.dart';
import 'package:ulearn/pages/authentication/widgets/pop_up_messages.dart';
import 'package:flutter/material.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});

  Future<void> handleSignUp() async {
    var state = ref.read(registerNotifierProvider);

    String name = state.username;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;
    if (state.username.isEmpty || name.isEmpty) {
      toastInfo('Your name is empty');
      return;
    }
    if (state.email.isEmpty || email.isEmpty) {
      toastInfo('Your email is empty');
      return;
    }

    if (state.username.length < 6 || name.length < 6) {
      toastInfo('Your name is too short');
      return;
    }

    if ((state.password.isEmpty || state.rePassword.isEmpty) ||
        password.isEmpty ||
        rePassword.isEmpty) {
      toastInfo('Your is empty');
      return;
    }
    if ((state.password != state.rePassword) || password != rePassword) {
      toastInfo('Your password didn\'t mach');
      return;
    }

    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if (kDebugMode) {
        print(credential);
      }
      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(name);
        toastInfo(
            'An email has been sent to verify your account.Please confirm identity');
        if (ref.context.mounted) {
          Navigator.of(ref.context).pop();
        }
      }
    } catch (e) {}
  }
}
