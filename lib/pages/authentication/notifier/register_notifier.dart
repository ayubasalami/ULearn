import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ulearn/pages/authentication/notifier/register_state.dart';
part 'register_notifier.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  RegisterState build() {
    return RegisterState();
  }

  void onUserNameChange(String name) {
    state = state.copyWith(username: name);
  }

  void onUserEmailChange(String email) {
    state = state.copyWith(email: email);
  }
}
