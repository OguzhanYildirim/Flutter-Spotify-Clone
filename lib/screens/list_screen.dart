// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:spotify_clone/widgets/custom_app_bar.dart';
import 'package:spotify_clone/widgets/custom_top_bar.dart';

import '../models/catalog.dart';
import '../widgets/custom_card_item.dart';

class ListViewPage extends StatelessWidget {
  String category;
  ListViewPage({
    Key? key,
    required this.category,
  }) : super(key: key);
  //get appBarTitle => "Türk Kamu-sen";

  @override
  Widget build(BuildContext context) {
    // Iterable<Item> filtered =
    //     CatalogModel.items.where((element) => element.desc == category);
    return Scaffold(
      backgroundColor: Colors.black,
      // ignore: prefer_const_constructors
      appBar: CustomAppBar("Title"),
      body: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            if (CatalogModel.items[index].desc == category) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: CustomCardItem(item: CatalogModel.items[index]),
              );
            }
          }),
    );
  }
}
