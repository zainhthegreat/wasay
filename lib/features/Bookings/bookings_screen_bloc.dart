

import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../app_cubit.dart';
import '../../app_repo.dart';
import 'bookings_screen_event.dart';
import 'bookings_screen_state.dart';

class BookingsScreenBloc extends Bloc<BookingsScreenEvent,BookingsScreenState>
{
  AppCubit appCubit;
  AppRepo appRepo;

  BookingsScreenBloc({required this.appRepo,required this.appCubit}): super(BookingsScreenState(
    loading: false
  )){
    on<SelectDateEvent>(setDate);
    on<ConfirmBookingEvent>(book);
  }

  FutureOr<void> setDate(SelectDateEvent event, Emitter<BookingsScreenState> emit) {
    String str="${event.date!.day}-${event.date!.month}-${event.date!.year}";
    emit(state.copyWith(dateString: str));
  }

  Future<FutureOr<void>> book(ConfirmBookingEvent event, Emitter<BookingsScreenState> emit) async {
  emit(state.copyWith(loading: true));
  await Future.delayed(const Duration(seconds: 3));
  emit(state.copyWith(location: event.location,problem: event.problem, date: event.date,loading: false));
  appCubit.showHomeScreen();
  }

}