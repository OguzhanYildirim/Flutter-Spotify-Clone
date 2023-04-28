import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/custom_app_bar.dart';
import 'package:spotify_clone/widgets/custom_top_bar.dart';

import '../models/catalog.dart';
import '../widgets/custom_card_item.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  //get appBarTitle => "Türk Kamu-sen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // ignore: prefer_const_constructors
      appBar: CustomAppBar("Title"),
      body: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: CustomCardItem(item: CatalogModel.items[index]),
            );
          }),
    );
  }
}
