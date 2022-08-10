import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:first_app/utils/Routes.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/item_widget.dart';

class homepage extends StatelessWidget {
  //final dummylist = List.generate(20, (index) => catalogmodel.items[0]);

  @override

  //using the scaffold to create a page to feel the user interface
  //
  Widget build(BuildContext context) {
    int variable = 30;
    return Scaffold(
      // body: Colors.red,
      appBar: AppBar(title: Text("Catalog App")),
      body: ListView.builder(
          itemCount: catalogmodel.items.length,
          //itemCount: dummylist.length,
          itemBuilder: ((context, index) {
            return itemwidget(
              item: catalogmodel.items[index],
            );
          })),
      drawer: Mydrawer(),
    );
  }
}
