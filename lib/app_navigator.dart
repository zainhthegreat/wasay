import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/app_cubit.dart';
import 'package:wasay/features/Login/login_screen_ui.dart';

import 'app_state.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
      child:  BlocBuilder<AppCubit,AppState>(
        builder: (context, state) {
        return Navigator(
          pages: const[
          MaterialPage(child: LoginScreenUI())
          ],
          onPopPage: (route, result) => route.didPop(result),
        );
        },
      ),
    );
  }
}
