abstract class SignUpScreenEvent {}

class SignUpButtonClickedEvent extends SignUpScreenEvent {
  String email;
  String password;
  String number;
  String userName;

  SignUpButtonClickedEvent(
      {required this.email,
      required this.password,
      required this.number,
      required this.userName});


}

class NavigateToLoginScreenEvent extends SignUpScreenEvent {}
