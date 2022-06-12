import 'package:google_maps_flutter/google_maps_flutter.dart';

class BookingsScreenState{

  LatLng? location;
  String? problem;
  DateTime? date;
  String? dateString;
  bool? loading;

  BookingsScreenState({this.location, this.problem, this.date, this.dateString,this.loading});

  BookingsScreenState copyWith({
  LatLng? location,
  String? problem,
  DateTime? date,
  String? dateString,
  bool? loading
  })
  {
    return BookingsScreenState(
      location: location ?? this.location,
      problem: problem ?? this.problem,
      date: date ?? this.date,
      dateString: dateString ?? this.dateString,
      loading: loading ?? this.loading
    );
  }


}