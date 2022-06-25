
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

  AppCubit.hotline({required this.appRepo}): super(HotlineAppState());

  AppCubit.towTrucking({required this.appRepo}): super(TowTruckingAppState());

  AppCubit.contactus({required this.appRepo}): super(ContactUsAppState());

  AppCubit.accountDetails({required this.appRepo}): super(AccountDetailsAppState());

  AppCubit.previousBookings({required this.appRepo}): super(PreviousBookingsAppState());

  AppCubit.feedback({required this.appRepo}): super(FeedbackAppState());




  //functions
  showSignUpScreen()=>emit(SignUpAppState());
  showLoginScreen()=>emit(LoginAppState());
  showHomeScreen()=> emit(HomeAppState());
  showBookingScreen()=> emit(BookingsAppState());
  showHotlineScreen()=> emit(HotlineAppState());
  showTowTruckingScreen()=> emit(TowTruckingAppState());
  showContactUsScreen()=> emit(ContactUsAppState());
  showAccountDetailsScreen()=> emit(AccountDetailsAppState());
  showFeedbackScreen()=> emit(FeedbackAppState());
  showPreviousBookingScreen()=> emit(PreviousBookingsAppState());



}
