import 'package:flutter_bloc/flutter_bloc.dart';
import '../../app_cubit.dart';
import '../../app_repo.dart';
import 'hotline_screen_event.dart';
import 'hotline_screen_state.dart';

class HotlineScreenBloc extends Bloc<HotlineScreenEvent,HotlineScreenState> {
  AppCubit? appCubit;
  AppRepo? appRepo;

  HotlineScreenBloc({required this.appCubit, required this.appRepo})
      : super(HotlineScreenState());

}