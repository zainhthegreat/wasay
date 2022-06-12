
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bookings_screen_bloc.dart';

class BookingsScreenUI extends StatefulWidget {
  const BookingsScreenUI({Key? key}) : super(key: key);

  @override
  State<BookingsScreenUI> createState() => _BookingsScreenUIState();
}

class _BookingsScreenUIState extends State<BookingsScreenUI> {
  TextEditingController? loc;
  TextEditingController? problem;
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        // help Zain
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
      body: Container(
          color: Colors.teal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  "Book your Maintenance with our trusted Mechanics",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Your Location",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    border: Border.all(color: Colors.tealAccent, width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: TextFormField(
                    controller: problem,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        label: Text("Location"),
                        contentPadding: EdgeInsets.only(left: 15)),
                  ),
                ),

                const SizedBox(height: 5),
                const Text(
                  "Describe your maintenance problem",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    border: Border.all(color: Colors.tealAccent, width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: TextFormField(
                    controller: problem,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        label: Text("Problem"),
                        contentPadding: EdgeInsets.only(left: 15)),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "kindly select your date and time for the appointment",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20.0,
                ),

                // Text("${selectedDate.toUtc()}".split(' ')[0]),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () => _selectDate(context),
                  child: const Text('Select date'),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal, elevation: 3 // Background color
                      ),
                  onPressed: () {},
                  child: const Text("Confirm Booking"),
                )
              ],
            ),
          )),
    );
  }
}
