
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/features/AccountDetails/accdetails_screen_events.dart';
import '../../app_cubit.dart';
import '../../app_repo.dart';
import 'contactus_screen_event.dart';
import 'contactus_screen_state.dart';


class ContactUsScreenBloc extends Bloc<ContactUsScreenEvent, ContactUsScreenState>
{
  AppCubit appCubit;
  AppRepo appRepo;

  ContactUsScreenBloc({required this.appRepo,required this.appCubit}): super(ContactUsScreenState());
}
