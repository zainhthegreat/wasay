import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/features/AccountDetails/accdetails_screen_bloc.dart';

class AccountsDetailsScreenUI extends StatefulWidget {
  const AccountsDetailsScreenUI({Key? key}) : super(key: key);

  @override
  State<AccountsDetailsScreenUI> createState() =>
      _AccountsDetailsScreenUIState();
}

class _AccountsDetailsScreenUIState extends State<AccountsDetailsScreenUI> {
  var userDetails;
  var _userDetails;
  Future<String> getUserDetails() async {
    await FirebaseFirestore.instance
        .collection("User_info")
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .get()
        .then((value) => {
            userDetails = value
        });
    return "potato";
  }

  @override
  initState() {

    _userDetails = getUserDetails();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Details"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            size: 30,
          ),
          onPressed: () {
            context.read<AccountDetailsScreenBloc>().appCubit.showHomeScreen();
          },
        ),
      ),
      body: FutureBuilder(
        future: _userDetails,
        builder: (context, snapshot) {
          return Container(
              color: Colors.teal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                      child: Text(
                    "Account Details",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                  //Image fetched from server uploaded
                  //Name
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                    child: Row(
                      children:  [
                        Text("Name: ${userDetails['userName']}",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        // Text retrieve field from database
                      ],
                    ),
                  ),
                  //Email
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                    child: Row(
                      children:  [
                        Text("Email: ${userDetails['email']}",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        // Text retrieve field from database
                      ],
                    ),
                  ),
                  //Number
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                    child: Row(
                      children:  [
                        Text("Number: ${userDetails['number']}",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        // Text retrieve field from database
                      ],
                    ),
                  ),
                ],
              ));
        }
      ),
    );
  }
}
