
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class BookingsScreenEvent{}

class SelectDateEvent extends BookingsScreenEvent{
  DateTime? date;

  SelectDateEvent({required this.date});
}

class ConfirmBookingEvent extends BookingsScreenEvent{
  LatLng? location;
  String? problem;
  DateTime? date;

  ConfirmBookingEvent({required this.location,required this.problem,required this.date});
}