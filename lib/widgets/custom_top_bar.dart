import 'package:flutter/material.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'İndirim Tanıtım',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
        ),
        Row(
          children: const [
            Icon(
              Icons.notifications_outlined,
              color: Colors.white,
              size: 29,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
              size: 29,
            ),
          ],
        )
      ],
    );
  }
}
