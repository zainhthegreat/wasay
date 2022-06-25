import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:map_location_picker/generated/l10n.dart' as location_picker;

import 'app_cubit.dart';
import 'app_navigator.dart';
import 'app_repo.dart';


Future <void> main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        location_picker.S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[
        Locale('en', ''),
        Locale('ar', ''),
      ],
      title: 'Flutter Demo',
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

