import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearn/pages/authentication/notifier/register_notifier.dart';
import 'package:ulearn/pages/authentication/widgets/pop_up_messages.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});

  void handleSignUp() {
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

    print(name);
    print(email);
    print(password);
    print(rePassword);
    if (state.password != state.rePassword) {
      toastInfo('Your password didn\'t mach');
      return;
    }
  }
}
