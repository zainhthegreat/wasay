import 'package:flutter/material.dart';

class AccountsDetailsScreenUI extends StatefulWidget {
  const AccountsDetailsScreenUI({Key? key}) : super(key: key);

  @override
  State<AccountsDetailsScreenUI> createState() =>
      _AccountsDetailsScreenUIState();
}

class _AccountsDetailsScreenUIState extends State<AccountsDetailsScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0,10.0 ),
                child: Row(
                  children: const [
                    Text("Name", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)
                    ),
                    // Text retrieve field from database
                  ],
                ),

              ),
              //Email
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0,10.0 ),
                child: Row(
                  children: const [
                    Text("Email", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)
                    ),
                    // Text retrieve field from database
                  ],
                ),

              ),
              //Number
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0,10.0 ),
                child: Row(
                  children: const [
                    Text("Number", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)
                    ),
                    // Text retrieve field from database
                  ],
                ),

              ),
              //Contact info
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0,10.0 ),
                child: Row(
                  children: const [
                    Text("Potato", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)
                    ),
                    // Text retrieve field from database
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
