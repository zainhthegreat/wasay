import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/features/TowTruckingService/towtrucking_screen_bloc.dart';

class TowTruckingScreenUI extends StatefulWidget {
  const TowTruckingScreenUI({Key? key}) : super(key: key);

  @override
  State<TowTruckingScreenUI> createState() => _TowTruckingScreenUIState();
}

class _TowTruckingScreenUIState extends State<TowTruckingScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tow Trucking Service"),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_sharp,
              size: 30,
            ),
            onPressed: () {
              context.read<TowTruckingScreenBloc>().appCubit!.showHomeScreen();
            },
          ),
        ),
        body: Container(
            color: Colors.blueGrey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Is your car seemingly written off?",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                SizedBox(height: 10),

                ElevatedButton(onPressed: (){


                }, child: Text(
                  "Here order our Promptu Towing service at your location",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  textAlign: TextAlign.center,
                ),)


              ],
            )));
  }
}
