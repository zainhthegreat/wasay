import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'contactus_screen_bloc.dart';

class ContactUsScreenUI extends StatefulWidget {
  const ContactUsScreenUI({Key? key}) : super(key: key);

  @override
  State<ContactUsScreenUI> createState() => _ContactUsScreenUIState();
}

class _ContactUsScreenUIState extends State<ContactUsScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contact Us"),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_sharp,
              size: 30,
            ),
            onPressed: () {
              context.read<ContactUsScreenBloc>().appCubit.showHomeScreen();
            },
          ),
        ),
        body: Container(
          color: Colors.blueGrey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Need to report a problem?", style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone, color: Colors.white, size: 30,),
                  Text("+92 123 595 2132", style: TextStyle(color: Colors.white, fontSize: 18)),
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home, color: Colors.white, size: 30,),
                  Text("SSCASEIT Uni ISB", style: TextStyle(color: Colors.white, fontSize: 18)),
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.email, color: Colors.white, size: 30,),
                  Text("car@info.com", style: TextStyle(color: Colors.white)),
                ],)
            ],
          ),
        ));
  }
}
