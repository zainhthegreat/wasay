

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/features/PreviousBookings/prebooking_screen_event.dart';
import 'package:wasay/features/PreviousBookings/prebooking_screen_state.dart';

import '../../app_cubit.dart';
import '../../app_repo.dart';

class PreBookingScreenBloc extends Bloc<PreBookingEvents, PreBookingState>{

  AppCubit appCubit;
  AppRepo appRepo;

  PreBookingScreenBloc({required this.appRepo,required this.appCubit}): super(PreBookingState());

}