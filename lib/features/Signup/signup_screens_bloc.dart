import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      SignUpButtonClickedEvent event, Emitter<SignUpScreenState> emit) async {
    state.copyWith(
        email: event.email,
        password: event.password,
        number: event.number,
        userName: event.userName);

    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: event.email,
      password: event.password,
    );

    await FirebaseFirestore.instance.collection("User_info").doc(FirebaseAuth.instance.currentUser?.uid).set({
      "email": event.email,
      "password": event.password,
      "number": event.number,
      "userName": event.userName
    });

    appCubit.showHomeScreen();
  }

  FutureOr<void> navigate(
      NavigateToLoginScreenEvent event, Emitter<SignUpScreenState> emit) {
    appCubit.showLoginScreen();
  }
}
