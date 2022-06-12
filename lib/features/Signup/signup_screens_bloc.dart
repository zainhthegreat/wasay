import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/features/Login/login_screen_events.dart';
import 'package:wasay/features/Signup/signup_screen_events.dart';
import 'package:wasay/features/Signup/signup_screen_state.dart';

import '../../app_cubit.dart';
import '../../app_repo.dart';

class SignUpScreenBloc extends Bloc<SignUpScreenEvent, SignUpScreenState> {
  AppRepo appRepo;
  AppCubit appCubit;

  SignUpScreenBloc({required this.appCubit, required this.appRepo})
      : super(SignUpScreenState()) {
    on<SignUpButtonClickedEvent>(signUp);
    on<NavigateToLoginScreenEvent>(navigate);

  }

  FutureOr<void> signUp(
      SignUpButtonClickedEvent event, Emitter<SignUpScreenState> emit) {
    state.copyWith(email: event.email, password: event.password);
  }


  FutureOr<void> navigate(NavigateToLoginScreenEvent event, Emitter<SignUpScreenState> emit) {
    appCubit.showLoginScreen();
  }
}
