import 'package:flutter/material.dart';

import '../../common_widgets/common_dialog/dialog_widget.dart';

const String dialog = 'The functionality about registration will do asap!';
const String button = 'Click here for register';
const List<String> numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  String value_number = numbers.first;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailEditingController.dispose();
    passwordEditingController.dispose();
    confirmPasswordController.dispose();
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
                'Benvenuto! Ecco la schermata di Register',
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
                height: 20,
              ),
              TextField(
                controller: confirmPasswordController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              DropdownButton(
                value: value_number,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 12,
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    value_number = value!;
                  });
                },
                items: numbers.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
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
