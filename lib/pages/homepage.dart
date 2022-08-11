import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:first_app/utils/Routes.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/item_widget.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  //final dummylist = List.generate(20, (index) => catalogmodel.items[0]);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
  }

  loaddata() async {
    final catalogJson = await rootBundle.loadString('assets/data/catalog.json');
    final decodeddata = json.decode(catalogJson);
    var productsdata = decodeddata['products'];
  }

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
