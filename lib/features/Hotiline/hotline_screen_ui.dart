import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'hotline_screen_bloc.dart';

class HotlineScreenUI extends StatefulWidget {
  const HotlineScreenUI({Key? key}) : super(key: key);

  @override
  State<HotlineScreenUI> createState() => _HotlineScreenUIState();
}

class _HotlineScreenUIState extends State<HotlineScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hotline"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            size: 30,
          ),
          onPressed: () {
            context.read<HotlineScreenBloc>().appCubit
                ?.showHomeScreen();
          },
        ),
      ),
      body: Container(
        color: Colors.teal,
        margin: EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.blueGrey,
              child: const Text(
                "Dial This Number for immediate Help",
                style: TextStyle(fontSize: 26, color: Colors.white, ),
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(
                onPressed: () {
                  //dial this number directly from phone
                },
                child: Expanded(


                    child: const Text(
                  "0335-1559187", style: TextStyle(fontSize: 24, color: Colors.white, ),
                )))
          ],
        ),
      ),
    );
  }
}
