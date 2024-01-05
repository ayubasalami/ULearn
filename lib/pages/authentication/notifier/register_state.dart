class RegisterState {
  final String username;
  final String email;
  final String password;
  final String rePassword;
  RegisterState({
    this.email = '',
    this.password = '',
    this.rePassword = '',
    this.username = '',
  });

  RegisterState copyWith(
      {String? username, String? email, String? password, String? rePassword}) {
    return RegisterState(
      email: email ?? this.email,
      password: password ?? this.password,
      rePassword: rePassword ?? this.password,
      username: username ?? this.username,
    );
  }
}
