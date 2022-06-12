

import 'package:flutter_bloc/flutter_bloc.dart';import '../../app_cubit.dart';


import '../../app_repo.dart';
import '../Home/home_screen_event.dart';
import '../Home/home_screen_state.dart';
import 'bookings_screen_event.dart';
import 'bookings_screen_state.dart';

class BookingsScreenBloc extends Bloc<BookingsScreenEvent,BookingsScreenState>
{
  AppCubit appCubit;
  AppRepo appRepo;

  BookingsScreenBloc({required this.appRepo,required this.appCubit}): super(BookingsScreenState());

}