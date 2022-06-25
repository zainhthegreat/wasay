import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/app_cubit.dart';
import 'package:wasay/features/AccountDetails/accdetails_screen_bloc.dart';
import 'package:wasay/features/AccountDetails/accdetails_screen_ui.dart';
import 'package:wasay/features/Bookings/bookings_screen_ui.dart';
import 'package:wasay/features/FeedBack/feedback_screen_bloc.dart';
import 'package:wasay/features/FeedBack/feedback_screen_ui.dart';
import 'package:wasay/features/Home/home_screen_ui.dart';
import 'package:wasay/features/Login/login_screen_ui.dart';
import 'package:wasay/features/PreviousBookings/prebooking_screen_bloc.dart';
import 'package:wasay/features/PreviousBookings/prebooking_screen_ui.dart';
import 'package:wasay/features/TowTruckingService/towtruck_screen_ui.dart';
import 'package:wasay/features/TowTruckingService/towtrucking_screen_bloc.dart';

import 'app_repo.dart';
import 'app_state.dart';
import 'features/Bookings/bookings_screen_bloc.dart';
import 'features/ContactUs/contactus_screen_bloc.dart';
import 'features/ContactUs/contactus_screen_ui.dart';
import 'features/Home/home_screen_bloc.dart';
import 'features/Hotiline/hotline_screen_bloc.dart';
import 'features/Hotiline/hotline_screen_ui.dart';
import 'features/Login/login_screens_bloc.dart';
import 'features/Signup/signup_screen_ui.dart';
import 'features/Signup/signup_screens_bloc.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
      child:  BlocBuilder<AppCubit,AppState>(
        builder: (context, state) {
        return Navigator(
          pages:[

            if(state is LoginAppState)
          MaterialPage(child:
          BlocProvider(
              create: (BuildContext context) => LoginScreenBloc(
                  appRepo: context.read<AppRepo>(),
                  appCubit: context.read<AppCubit>()),
              child: const LoginScreenUI()),
          ),

            if(state is SignUpAppState)
              MaterialPage(child:
              BlocProvider(
                  create: (BuildContext context) => SignUpScreenBloc(
                      appRepo: context.read<AppRepo>(),
                      appCubit: context.read<AppCubit>()),
                  child: const SignUpScreenUI()),
              ),

            if(state is HomeAppState)
              MaterialPage(child:
              BlocProvider(
                  create: (BuildContext context) => HomeScreenBloc(
                      appRepo: context.read<AppRepo>(),
                      appCubit: context.read<AppCubit>()),
                  child: const HomeScreenUI()),
              ),

            if(state is BookingsAppState)
              MaterialPage(child:
              BlocProvider(
                  create: (BuildContext context) => BookingsScreenBloc(
                      appRepo: context.read<AppRepo>(),
                      appCubit: context.read<AppCubit>()),
                  child: const BookingsScreenUI()),
              ),

            if(state is HotlineAppState)
              MaterialPage(child:
              BlocProvider(
                  create: (BuildContext context) => HotlineScreenBloc(
                      appRepo: context.read<AppRepo>(),
                      appCubit: context.read<AppCubit>()),
                  child: const HotlineScreenUI()),
              ),

            if(state is TowTruckingAppState)
              MaterialPage(child:
              BlocProvider(
                  create: (BuildContext context) => TowTruckingScreenBloc(
                      appRepo: context.read<AppRepo>(),
                      appCubit: context.read<AppCubit>()),
                  child: const TowTruckingScreenUI()),
              ),

            if(state is ContactUsAppState)
              MaterialPage(child:
              BlocProvider(
                  create: (BuildContext context) => ContactUsScreenBloc(
                      appRepo: context.read<AppRepo>(),
                      appCubit: context.read<AppCubit>()),
                  child: const ContactUsScreenUI()),
              ),

            if(state is AccountDetailsAppState)
              MaterialPage(child:
              BlocProvider(
                  create: (BuildContext context) => AccountDetailsScreenBloc(
                      appRepo: context.read<AppRepo>(),
                      appCubit: context.read<AppCubit>()),
                  child: const AccountsDetailsScreenUI()),
              ),

            if(state is PreviousBookingsAppState)
              MaterialPage(child:
              BlocProvider(
                  create: (BuildContext context) => PreviousBookingScreenBloc(
                      appRepo: context.read<AppRepo>(),
                      appCubit: context.read<AppCubit>()),
                  child: const PreviousBookingsScreenUI()),
              ),

            if(state is FeedbackAppState)
              MaterialPage(child:
              BlocProvider(
                  create: (BuildContext context) => FeedBackScreenBloc(
                      appRepo: context.read<AppRepo>(),
                      appCubit: context.read<AppCubit>()),
                  child: const FeedBackScreenUI()),
              ),






          ],
          onPopPage: (route, result) => route.didPop(result),
        );
        },
      ),
    );
  }
}
