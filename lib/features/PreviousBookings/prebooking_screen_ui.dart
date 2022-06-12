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
      appBar: AppBar(title: const Text("Previous Bookings"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            ListView(children: const [

            ],)
      ],),
    );
  }
}
