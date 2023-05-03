import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/home_screen.dart';
import 'package:spotify_clone/screens/list_screen.dart';

import '../widgets/contact_info.dart';
import '../widgets/item_details_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 2)).then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Container(
        height: 300,
        width: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/spotify.png'))),
      )),
    );
  }
}
