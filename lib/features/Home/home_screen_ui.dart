
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_location_picker/google_map_location_picker.dart';
import 'package:wasay/features/Home/home_screen_bloc.dart';

import '../AccountDetails/accdetails_screen_state.dart';

class HomeScreenUI extends StatefulWidget {
  const HomeScreenUI({Key? key}) : super(key: key);

  @override
  State<HomeScreenUI> createState() => _HomeScreenUIState();
}

class _HomeScreenUIState extends State<HomeScreenUI> {
  var location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "HOME",
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 100),
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                context.read<HomeScreenBloc>().appCubit.showAccountDetailsScreen();

              },
              child: Container(
               padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                width: size.width,
                color: Colors.teal.shade400,
                child: const Text(
                  "Account details",
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){} , child:Container(child: Text("Hashir's Pc sucks!!!!"))),
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                context.read<HomeScreenBloc>().appCubit.showPreviousBookingScreen();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                width: size.width,
                color: Colors.teal.shade400,
                child: const Text(
                  "Previous Bookings",
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
            ),
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                context.read<HomeScreenBloc>().appCubit.showFeedbackScreen();

              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                width: size.width,
                color: Colors.teal.shade400,
                child: const Text(
                  "Feedback",
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Color(0xfff6f6f6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                showLocationPicker(
                    context, "AIzaSyAXgg20hPxSIHglnEaF16_iEpU6_LcioIM",
                    initialCenter: const LatLng(31.1975844, 29.9598339),
                    myLocationButtonEnabled: true,
                    layersButtonEnabled: true,
                    desiredAccuracy: LocationAccuracy.bestForNavigation,
                    countries: ['PK'],
                    requiredGPS: true);
              },
              child: Container(
                alignment: const Alignment(-0.5, 0),
                width: size.width,
                height: 110,
                color: Colors.teal,
                child: const Text(
                  "Order a Mechanic at your Location",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                  onPressed: () {
                    context.read<HomeScreenBloc>().appCubit.showHotlineScreen();
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.phone),
                      SizedBox(width: 10),
                      Text("Hotline", style: TextStyle(fontSize: 18)),
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),

              child: ElevatedButton(
                  onPressed: () {
                    context.read<HomeScreenBloc>().appCubit.showBookingScreen();
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.book),
                      SizedBox(width: 10),
                      Text("Appointments",style: TextStyle(fontSize: 18)),
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                  onPressed: () {
                    context.read<HomeScreenBloc>().appCubit.showTowTruckingScreen();

                  },
                  child: Row(
                    children: const [
                      Icon(Icons.fire_truck_rounded),
                      SizedBox(width: 10),
                      Text("Order Towing service", style: TextStyle(fontSize: 18)),
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                  onPressed: () {
                    context.read<HomeScreenBloc>().appCubit.showContactUsScreen();
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.contact_page),
                      SizedBox(width: 10),
                      Text("Contact Us", style: TextStyle(fontSize: 18)),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
