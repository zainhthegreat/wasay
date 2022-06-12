


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/features/FeedBack/feedback_screen_events.dart';
import 'package:wasay/features/FeedBack/feedback_screen_state.dart';

import '../../app_cubit.dart';
import '../../app_repo.dart';

class FeedBackScreenBloc extends Bloc<FeedBackScreenEvents,  FeedBackScreenState> {
  AppRepo appRepo;
  AppCubit appCubit;

  FeedBackScreenBloc({required this.appCubit, required this.appRepo})
      : super(FeedBackScreenState());
}