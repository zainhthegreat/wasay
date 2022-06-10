import 'package:flutter/material.dart';

class LoginScreenUI extends StatefulWidget {
  const LoginScreenUI({Key? key}) : super(key: key);

  @override
  State<LoginScreenUI> createState() => _LoginScreenUIState();
}

class _LoginScreenUIState extends State<LoginScreenUI> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login Screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
          Container(
            decoration: BoxDecoration(
              color: Colors.white30,
              border: Border.all(color: Colors.tealAccent, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  label: Text("Email"),
                  contentPadding: EdgeInsets.only(left: 15)),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white30,
              border: Border.all(color: Colors.tealAccent, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const TextField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  label: Text("Password"),
                  contentPadding: EdgeInsets.only(left: 15)),
            ),
          ),
          SizedBox(
            height: size.height / 10,
          ),
          TextButton(
            onPressed: () {
              print("Ds");
            },
            child: RichText(
              text: const TextSpan(text: "Don't have an account?",
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
              children: <TextSpan>[
                TextSpan(text: " Sign Up.", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900))
              ]
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.teal,
    );
  }
}
