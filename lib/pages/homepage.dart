import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override

  //using the scaffold to create a page to feel the user interface
  //
  Widget build(BuildContext context) {
    int variable = 30;
    return Scaffold(
      // body: Colors.red,
      appBar: AppBar(title: Text("Main page")),
      body: Center(
        child: Container(
          child: Text("Hello harsh nishad $variable is left to complete this course"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
