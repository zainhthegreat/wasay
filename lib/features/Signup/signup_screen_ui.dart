
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasay/features/Signup/signup_screen_events.dart';
import 'package:wasay/features/Signup/signup_screens_bloc.dart';

class SignUpScreenUI extends StatefulWidget {
  const SignUpScreenUI({Key? key}) : super(key: key);


  @override
  State<SignUpScreenUI> createState() => _SignUpScreenUIState();
}

class _SignUpScreenUIState extends State<SignUpScreenUI> {
  TextEditingController? email;
  TextEditingController? password;
  TextEditingController? number;
  TextEditingController? userName;

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
              "Sign Up",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white30,
                border: Border.all(color: Colors.white, width: 2),
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
                border: Border.all(color: Colors.white, width: 2),
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
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white30,
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: number,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    label: Text("Number"),
                    contentPadding: EdgeInsets.only(left: 15)),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white30,
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: userName,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    label: Text("User Name"),
                    contentPadding: EdgeInsets.only(left: 15)),
              ),
            ),
            SizedBox(
              height: size.height / 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, // Background color
              ),
              onPressed: () {
                // TODO to call an event always use READ
                if (email!.text.isNotEmpty) {
                  if (email!.text.contains("@") && password!.text.isNotEmpty && number!.text.isNotEmpty && userName!.text.isNotEmpty) {
                  context.read<SignUpScreenBloc>().add(SignUpButtonClickedEvent(email: email!.text, password: password!.text));
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
                context.read<SignUpScreenBloc>().add(NavigateToLoginScreenEvent());
              },
              child: RichText(
                text:  const TextSpan(
                    text: "Have an account?",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                          text: " Login Here.",
                          style: TextStyle(
                              color: Colors.black,fontSize: 16, fontWeight: FontWeight.w900))
                    ]),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
