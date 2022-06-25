
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/features/AccountDetails/accdetails_screen_events.dart';
import '../../app_cubit.dart';
import '../../app_repo.dart';
import 'accdetails_screen_state.dart';

class AccountDetailsScreenBloc extends Bloc<AccountDetailsScreenEvents,AccountDetailsScreenState>
{
  AppCubit appCubit;
  AppRepo appRepo;

  AccountDetailsScreenBloc({required this.appRepo,required this.appCubit}): super(AccountDetailsScreenState());

}
