import 'package:flutter/material.dart';

import '../../common_widgets/common_dialog/dialog_widget.dart';

const String dialog = 'The functionality about login will do asap!';
const String button = 'Click here for login';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailEditingController.dispose();
    passwordEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade400,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Benvenuto! Ecco la schermata di login',
                style: TextStyle(fontSize: 22, color: Colors.black38, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: emailEditingController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.email),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordEditingController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomDialog(textDialog: dialog, textButton: button),
            ],
          ),
        ),
      ),
    );
  }
}

///In the future, will add a dialog that appears when the user click on the button
