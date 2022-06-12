
class SignUpScreenState {
  String? email;
  String? password;

  SignUpScreenState({this.email, this.password});

  SignUpScreenState copyWith({String? email, String? password}) {
    return SignUpScreenState(
        email: email ?? this.email, password: password ?? this.password);
  }

}
