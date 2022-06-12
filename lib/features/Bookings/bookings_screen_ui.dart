import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_location_picker/google_map_location_picker.dart';
import 'package:wasay/features/Bookings/bookings_screen_event.dart';

import 'bookings_screen_bloc.dart';

class BookingsScreenUI extends StatefulWidget {
  const BookingsScreenUI({Key? key}) : super(key: key);

  @override
  State<BookingsScreenUI> createState() => _BookingsScreenUIState();
}

class _BookingsScreenUIState extends State<BookingsScreenUI> {
  TextEditingController? problem;
  LatLng? location;
  DateTime? selectedDate;
  String? date;

  @override
  initState() {
    problem = TextEditingController();
    location = const LatLng(0, 0);
    selectedDate = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          " Book an appointment",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            size: 30,
          ),
          onPressed: () {
            context.read<BookingsScreenBloc>().appCubit.showHomeScreen();
          },
        ),
      ),
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Book your Maintenance with our trusted Mechanics",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 15),
              MaterialButton(
                elevation: 20,
                padding: EdgeInsets.zero,
                onPressed: () async {
                  var mapLocation = await showLocationPicker(
                      context, "AIzaSyAXgg20hPxSIHglnEaF16_iEpU6_LcioIM",
                      initialCenter: const LatLng(31.1975844, 29.9598339),
                      myLocationButtonEnabled: true,
                      layersButtonEnabled: true,
                      desiredAccuracy: LocationAccuracy.bestForNavigation,
                      countries: ['PK'],
                      requiredGPS: true);

                  location = LatLng(mapLocation?.latLng.latitude ?? -999,
                      mapLocation?.latLng.longitude ?? -99);
                },
                child: Container(
                  alignment: const Alignment(-0.5, 0),
                  width: size.width,
                  height: 70,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.tealAccent, width: 2),
                      color: Colors.white,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: const Text(
                    "Enter Your Location",
                    style: TextStyle(fontSize: 20, color: Colors.teal),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Describe your maintenance problem",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.tealAccent, width: 2),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: TextFormField(
                  controller: problem,
                  maxLines: null,
                  minLines: 2,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      label: Text("Problem"),
                      contentPadding: EdgeInsets.only(left: 15)),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Kindly select your date and time for the appointment",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    selectedDate = await showDatePicker(
                        context: context,
                        initialDate: selectedDate!,
                        firstDate: DateTime(2015, 8),
                        lastDate: DateTime(2101));

                    // ignore: use_build_context_synchronously
                    context
                        .read<BookingsScreenBloc>()
                        .add(SelectDateEvent(date: selectedDate));
                  },
                  child: Text(
                    context.watch<BookingsScreenBloc>().state.dateString ??
                        "Select Date",
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green, elevation: 3 // Background color
                        ),
                    onPressed: () {
                      context.read<BookingsScreenBloc>().add(
                            ConfirmBookingEvent(
                              location: location,
                              date: selectedDate,
                              problem: problem?.text ?? "",
                            ),
                          );
                    },
                    child: SizedBox(
                      width: size.width / 1.25,
                      height: 70,
                      child:
                          context.watch<BookingsScreenBloc>().state.loading ==
                                  true
                              ? const Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                )
                              : const Center(
                                  child: Text(
                                    "Confirm Booking",
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
