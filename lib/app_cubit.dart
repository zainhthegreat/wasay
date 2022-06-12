
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/app_state.dart';

import 'app_repo.dart';

class AppCubit extends Cubit<AppState>
{

  AppRepo appRepo;

  ///AppCubit Constructor where default state for the cubit is "{mentioned in the next line}"
  AppCubit({required this.appRepo}) : super(LoginAppState());

  AppCubit.signUp({required this.appRepo}): super(SignUpAppState());

  AppCubit.logIn({required this.appRepo}): super(LoginAppState());

  AppCubit.home({required this.appRepo}): super(HomeAppState());

  AppCubit.bookings({required this.appRepo}): super(BookingsAppState());


  //functions
  showSignUpScreen()=>emit(SignUpAppState());
  showLoginScreen()=>emit(LoginAppState());
  showHomeScreen()=> emit(HomeAppState());
  showBookingScreen()=> emit(BookingsAppState());


}
