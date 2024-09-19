import 'package:flutter/material.dart';
import 'package:help/myTextFormField.dart';
import 'package:help/views/basic.dart';

class Register extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController userName = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController address = TextEditingController();

  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            const Icon(
              Icons.person,
              size: 100,
            ),
            const Text(
              "Crescer Juntos",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextFormField(
              controller: email,
              name: "Email",
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextFormField(
              controller: userName,
              name: "Nome",
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextFormField(
              controller: phoneNumber,
              name: "Número de telefone",
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextFormField(
              controller: password,
              name: "Senha",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 73, 77, 97),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainPage()),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Continue"),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
