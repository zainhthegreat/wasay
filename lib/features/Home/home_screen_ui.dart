import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_location_picker/google_map_location_picker.dart';

class HomeScreenUI extends StatefulWidget {
  const HomeScreenUI({Key? key}) : super(key: key);

  @override
  State<HomeScreenUI> createState() => _HomeScreenUIState();
}

class _HomeScreenUIState extends State<HomeScreenUI> {
  var location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: Container(
                alignment: const Alignment(-0.5,0),
                width: size.width,
                color: Colors.teal.shade400,
                child: const Text(
                  "Account details",
                  style: TextStyle(fontSize: 26,color: Colors.white),
                ),
              ),
            ),
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: Container(
                alignment: const Alignment(-0.5,0),
                width: size.width,
                color: Colors.teal.shade400,
                child: const Text(
                  "Previous Bookings",
                  style: TextStyle(fontSize: 26,color: Colors.white),
                ),
              ),
            ),
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: Container(
                alignment: const Alignment(-0.5,0),
                width: size.width,
                color: Colors.teal.shade400,
                child: const Text(
                  "Feedback",
                  style: TextStyle(fontSize: 26,color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            MaterialButton(
             padding: EdgeInsets.zero,
              onPressed: () {
                showLocationPicker(
                  context,
                  "AIzaSyAXgg20hPxSIHglnEaF16_iEpU6_LcioIM",
                  initialCenter: const LatLng(31.1975844, 29.9598339),
                  myLocationButtonEnabled: true,
                  layersButtonEnabled: true,
                  desiredAccuracy: LocationAccuracy.bestForNavigation,
                  countries: ['PK'],
                  requiredGPS: true
                );
              },
              child: Container(
                alignment: const Alignment(-0.5,0),
                width: size.width,
                height: 110,
                color: Colors.teal,
                child: const Text(
                  "Order a Mechanic at your Location",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              ElevatedButton(onPressed: (){}, child: Row(
                children: [
                  Icon(Icons.phone),
                  const Text("  Hotline"),
                ],
              )
              ),
              ElevatedButton(onPressed: (){}, child: Row(
              children: [
              Icon(Icons.book),
                const Text("  Appointments"),
              ],)
              ),

            ],),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){}, child: Row(
                    children: const [
                      Icon(Icons.fire_truck_rounded),
                      Text("  Order Towing service"),
                    ],
                  )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){}, child: Row(
                    children: const [
                      Icon(Icons.contact_page),
                      Text("  Contact Us "),
                    ],)
                  ),
                ),

              ],),
          ],
        ),
      ),
    );
  }
}
