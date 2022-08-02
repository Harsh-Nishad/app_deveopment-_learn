import 'package:flutter/material.dart';

void main() {
  runApp(harsh_first_app());
}

class harsh_first_app extends StatelessWidget {
  const harsh_first_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        color: Colors.red,
        child: Center(
          child: Container(
            child: Text("Hello harsh nishad"),
          ),
        ),
      ),
    );
  }
}
