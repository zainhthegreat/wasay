

abstract class LoginScreenEvent{}

class LoginButtonClickedEvent extends LoginScreenEvent{
  String email;
  String password;

  LoginButtonClickedEvent({required this.email,required this.password});
}

class NavigateToSignUpScreenEvent extends LoginScreenEvent{}

class NavigateToHomeScreenEvent extends LoginScreenEvent{}