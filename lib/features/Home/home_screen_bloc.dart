
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/features/Home/home_screen_event.dart';
import 'package:wasay/features/Home/home_screen_state.dart';

import '../../app_cubit.dart';
import '../../app_repo.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent,HomeScreenState>
{
  AppCubit appCubit;
  AppRepo appRepo;

  HomeScreenBloc({required this.appRepo,required this.appCubit}): super(HomeScreenState());

}