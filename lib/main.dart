import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/app_repo.dart';

import 'app_cubit.dart';
import 'app_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Do',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        backgroundColor: Colors.deepPurple,
      ),
      home: RepositoryProvider(create: (BuildContext context)=> AppRepo(),
        child: BlocProvider(
          create: (BuildContext context) =>
              AppCubit(appRepo: context.read<AppRepo>()),
          child: const AppNavigator(),
        ),
      )

    );
  }
}

