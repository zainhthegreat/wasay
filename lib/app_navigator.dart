import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/app_cubit.dart';
import 'package:wasay/features/Home/home_screen_ui.dart';
import 'package:wasay/features/Login/login_screen_ui.dart';

import 'app_repo.dart';
import 'app_state.dart';
import 'features/Home/home_screen_bloc.dart';
import 'features/Login/login_screens_bloc.dart';
import 'features/Signup/signup_screen_ui.dart';
import 'features/Signup/signup_screens_bloc.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
      child:  BlocBuilder<AppCubit,AppState>(
        builder: (context, state) {
        return Navigator(
          pages:[

            if(state is LoginAppState)
          MaterialPage(child:
          BlocProvider(
              create: (BuildContext context) => LoginScreenBloc(
                  appRepo: context.read<AppRepo>(),
                  appCubit: context.read<AppCubit>()),
              child: const LoginScreenUI()),
          ),

            if(state is SignUpAppState)
              MaterialPage(child:
              BlocProvider(
                  create: (BuildContext context) => SignUpScreenBloc(
                      appRepo: context.read<AppRepo>(),
                      appCubit: context.read<AppCubit>()),
                  child: const SignUpScreenUI()),
              ),

            if(state is HomeAppState)
              MaterialPage(child:
              BlocProvider(
                  create: (BuildContext context) => HomeScreenBloc(
                      appRepo: context.read<AppRepo>(),
                      appCubit: context.read<AppCubit>()),
                  child: const HomeScreenUI()),
              ),



          ],
          onPopPage: (route, result) => route.didPop(result),
        );
        },
      ),
    );
  }
}
