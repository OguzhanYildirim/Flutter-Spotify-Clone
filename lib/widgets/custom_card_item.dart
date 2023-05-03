import 'package:flutter/material.dart';
import '../models/catalog.dart';
import 'item_details_page.dart';

class CustomCardItem extends StatelessWidget {
  final Item item;
  const CustomCardItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width;
    double containerHeight = MediaQuery.of(context).size.height / 5;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: ((context) => ItemDetailsPage(
                  activeItem: item,
                ))));

        // code to execute when the tile is tapped
      },
      child: Container(
        width: containerWidth,
        height: containerHeight,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.blueGrey,
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(2, 2), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 17, 30, 58)),
        child: Row(
          children: [
            Container(
              //height: 400,
              width: containerWidth * 0.4,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  image: DecorationImage(
                      image: NetworkImage(item.image), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: containerWidth * 0.06,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.amber,
                      ),
                      width: containerWidth * 0.5,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          item.name,
                          overflow: TextOverflow.visible,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: containerHeight * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: containerWidth * 0.00),
                    Text(
                      item.desc,
                      style: const TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    const SizedBox(width: 30),
                    Text(
                      item.price,
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    SizedBox(width: 100),
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.open_in_new_rounded,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
