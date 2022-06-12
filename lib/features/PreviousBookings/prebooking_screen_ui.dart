import 'package:flutter/material.dart';

class PreBookingsScreenUI extends StatefulWidget {
  const PreBookingsScreenUI({Key? key}) : super(key: key);

  @override
  State<PreBookingsScreenUI> createState() => _PreBookingsScreenUIState();
}

class _PreBookingsScreenUIState extends State<PreBookingsScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Previous Bookings"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListView(children: [

            ],)
        ],),
      ),
    );
  }
}
