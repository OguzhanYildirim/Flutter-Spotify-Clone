// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:spotify_clone/widgets/custom_app_bar.dart';

List circleIconsAttirbutes = [
  [
    Icon(
      Icons.location_on,
      color: Colors.white,
    ),
    Color.fromARGB(255, 234, 75, 106)
  ],
  [
    Icon(Icons.local_phone_rounded, color: Colors.white),
    Color.fromARGB(255, 38, 192, 225)
  ],
  [
    Icon(Icons.account_circle, color: Colors.white),
    Color.fromARGB(255, 253, 150, 66)
  ],
  [
    Icon(Icons.camera_alt, color: Colors.white),
    Color.fromARGB(255, 66, 206, 145)
  ]
];

class ContantInfoPage extends StatelessWidget {
  final String title;
  //final List<String> items;

  const ContantInfoPage({
    Key? key,
    required this.title,
    /*required this.items*/
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar('aaa'),
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 248, 248, 248), // Background color
            // Rounded border
          ),
          child: ListView.builder(
            itemCount: 4, //items.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: ContactListTile(
                  text: "text",
                  circleIcon: circleIconsAttirbutes[index][0],
                  circleColor: circleIconsAttirbutes[index][1],
                ),
              );
            },
          ),
        ));
  }
}

class ContactListTile extends StatelessWidget {
  Icon circleIcon;
  Color circleColor;
  String text;
  ContactListTile({
    Key? key,
    required this.circleIcon,
    required this.circleColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.blueGrey,
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(2, 2), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(3),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: circleColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child:
                  Padding(padding: const EdgeInsets.all(20), child: circleIcon),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
