import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  String title;
  CustomAppBar(
    this.title, {
    Key? key,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: <Widget>[
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.settings_outlined)),
          ],
        )
      ],
      backgroundColor: Colors.black,
    );
  }
}
