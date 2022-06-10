
class LoginScreenState {
  String? email;
  String? password;

  LoginScreenState({this.email, this.password});

  LoginScreenState copyWith(String? email, String? password) {
    return LoginScreenState(
        email: email ?? this.email, password: password ?? this.password);
  }

}
