import 'package:flutter/material.dart';
import 'package:first_app/models/catalog.dart';

class itemwidget extends StatelessWidget {
  final Item item;

  const itemwidget({super.key, required this.item}) : assert(item != null);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
