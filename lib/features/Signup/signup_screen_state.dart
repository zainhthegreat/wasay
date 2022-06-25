
class SignUpScreenState {
  String? email;
  String? password;
  String? number;
  String? userName;

  SignUpScreenState({this.email, this.password, this.number, this.userName});

  SignUpScreenState copyWith({String? email, String? password, String? number, String? userName}) {
    return SignUpScreenState(
        email: email ?? this.email, password: password ?? this.password, number: number ?? this.number, userName: userName ?? this.userName );
  }

}
