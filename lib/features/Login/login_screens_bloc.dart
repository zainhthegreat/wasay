
import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/features/Login/login_screen_events.dart';
import 'package:wasay/features/Login/login_screen_state.dart';

import '../../app_cubit.dart';
import '../../app_repo.dart';

class LoginScreenBloc extends Bloc<LoginScreenEvent,LoginScreenState>
{

  AppRepo appRepo;
  AppCubit appCubit;

  LoginScreenBloc({required this.appCubit,required this.appRepo}): super(LoginScreenState())
  {
    on<LoginButtonClickedEvent>(login);
    on<NavigateToSignUpScreenEvent>(navigateToSignUp);
    on<NavigateToHomeScreenEvent>(navigateToHome);
  }

  FutureOr <void> login(LoginButtonClickedEvent event, Emitter<LoginScreenState> emit) async {
   // state.copyWith(email: event.email, password: event.password);
     await FirebaseAuth.instance.signInWithEmailAndPassword(
         email: event.email, password: event.password
     );
  }

  FutureOr<void> navigateToSignUp(NavigateToSignUpScreenEvent event, Emitter<LoginScreenState> emit) {
    appCubit.showSignUpScreen();
  }

  FutureOr<void> navigateToHome(NavigateToHomeScreenEvent event, Emitter<LoginScreenState> emit) {
    appCubit.showHomeScreen();
  }

}