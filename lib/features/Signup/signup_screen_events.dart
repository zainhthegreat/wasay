abstract class SignUpScreenEvent{}

class SignUpButtonClickedEvent extends SignUpScreenEvent{
  String email;
  String password;

  SignUpButtonClickedEvent({required this.email,required this.password});
}

class NavigateToLoginScreenEvent extends SignUpScreenEvent{}