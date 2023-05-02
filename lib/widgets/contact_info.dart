import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/custom_app_bar.dart';

List<Icon> icons = [
  Icon(Icons.favorite, color: Colors.red),
  Icon(Icons.star, color: Colors.yellow),
  Icon(Icons.music_note, color: Colors.blue),
  Icon(Icons.camera_alt, color: Colors.grey),
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
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 0), // Background color
            // Rounded border
          ),
          child: ListView.builder(
            itemCount: 5, //items.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: ContactListTile(),
              );
            },
          ),
        ));
  }
}

class ContactListTile extends StatelessWidget {
  const ContactListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final containerWidth = mediaQuery.size.width;
    final containerHeight = mediaQuery.size.height / 8;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 35, 20, 177),
                borderRadius: BorderRadius.circular(16),
              ),
              child:
                  Padding(padding: const EdgeInsets.all(20), child: icons[0]),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              "somethink.com" * 5,
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
    );
  }
}
