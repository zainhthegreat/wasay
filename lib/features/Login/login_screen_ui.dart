import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_screen_events.dart';
import 'login_screens_bloc.dart';

class LoginScreenUI extends StatefulWidget {
  const LoginScreenUI({Key? key}) : super(key: key);

  @override
  State<LoginScreenUI> createState() => _LoginScreenUIState();
}

class _LoginScreenUIState extends State<LoginScreenUI> {
  TextEditingController? email;
  TextEditingController? password;

  @override
  initState() {
    email = TextEditingController();
    password = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height / 5,
            ),
            const Text(
              "LOGIN",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white30,
                border: Border.all(color: Colors.tealAccent, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextFormField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
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
              child: TextFormField(
                controller: password,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    label: Text("Password"),
                    contentPadding: EdgeInsets.only(left: 15)),
              ),
            ),
            SizedBox(
              height: size.height / 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
              ),
              onPressed: () {
                // TODO to call an event always use READ
                if (email!.text.isNotEmpty) {
                  if (email!.text.contains("@") && password!.text.isNotEmpty) {
                    context.read<LoginScreenBloc>().add(
                          LoginButtonClickedEvent(
                              email: email!.text, password: password!.text ),
                        );

                    context.read<LoginScreenBloc>().add(
                      NavigateToHomeScreenEvent()
                    );

                  }
                  else{
                    const snackBar = SnackBar(
                      content: Text('Wrong Inputs'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                }
              },
              child: const Text(
                "Submit",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: size.height / 10,
            ),
            TextButton(
              onPressed: () {
              context.read<LoginScreenBloc>().add(NavigateToSignUpScreenEvent());
              },
              child: RichText(
                text: const TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                          text: " Sign Up.",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w900))
                    ]),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.teal,
    );
  }
}
