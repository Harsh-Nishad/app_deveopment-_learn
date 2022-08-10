import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:first_app/utils/Routes.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String name = "";
  bool changebutton = false;

  final _formKey = GlobalKey<FormState>();

  moveTohome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });

      await Future.delayed(Duration(milliseconds: 500));
      await Navigator.pushNamed(context, AllRoutes.homeroute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("assets/images/login.png", fit: BoxFit.cover),
                SizedBox(height: 20),
                Text(
                  "Welcome $name",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 220, 76, 76),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Enter username",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 220, 76, 76),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter username";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter Password",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 220, 76, 76),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter password";
                        } else if (value.length < 6) {
                          return "Password must be atleast 6 characters";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, AllRoutes.homeroute);
                    //   },
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                    // ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changebutton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveTohome(context),
                        //Navigator.pushNamed(context, AllRoutes.homeroute)
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          height: 40,
                          width: changebutton ? 50 : 130,
                          alignment: Alignment.center,
                          child: changebutton
                              ? Icon(Icons.done, color: Colors.white)
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: changebutton ? 10 : 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}
