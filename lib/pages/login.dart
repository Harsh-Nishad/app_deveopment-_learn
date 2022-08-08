import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login.png", fit: BoxFit.cover),
            SizedBox(height: 20),
            Text(
              "Welcome",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 220, 76, 76),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter username",
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: " Enter password",
                  ),
                )
              ],
            )
          ],
        ));
  }
}
