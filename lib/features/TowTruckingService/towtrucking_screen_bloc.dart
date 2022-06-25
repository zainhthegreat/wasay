import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/features/TowTruckingService/towtrucking_screen_event.dart';
import 'package:wasay/features/TowTruckingService/towtrucking_screen_state.dart';
import '../../app_cubit.dart';
import '../../app_repo.dart';

class TowTruckingScreenBloc extends Bloc<TowTruckingScreenEvent, TowTruckingScreenState> {
  AppCubit? appCubit;
  AppRepo? appRepo;

  TowTruckingScreenBloc({required this.appCubit, required this.appRepo})
      : super(TowTruckingScreenState());

}