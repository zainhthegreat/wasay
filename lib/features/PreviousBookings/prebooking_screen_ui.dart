import 'package:flutter/material.dart';

class PreviousBookingsScreenUI extends StatefulWidget {
  const PreviousBookingsScreenUI({Key? key}) : super(key: key);

  @override
  State<PreviousBookingsScreenUI> createState() => _PreviousBookingsScreenUIState();
}

class _PreviousBookingsScreenUIState extends State<PreviousBookingsScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Previous Bookings"),
      ),
      body: Container(
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              const Text("All you bookings should be displayed here", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold) ),
            // get from database once deployed
            SizedBox(height: 20,),
            DataTable(columns: [
                DataColumn(label: Text("Name") ),
                DataColumn(label: Text("Booking") ),
                DataColumn(label: Text("Date") ),
                DataColumn(label: Text("Location") ),
            ],
            rows: [
              DataRow(cells: [
               DataCell(Text("sheryar")),
               DataCell(Text("Car tuning")),
               DataCell(Text("10-9-2")),
               DataCell(Text("Islamabad I-9/4")),
              ]
              ),
            ]
            ,)
        ],),
      ),
    );
  }
}
