import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:insta_demo/widgets/all_images.dart';
import 'package:insta_demo/widgets/page1.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget body2 = Container();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        gap: 8,
        color: Colors.white,
        activeColor: Colors.white,
        backgroundColor: Colors.black,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            
          ),
          GButton(
              icon: Icons.favorite,
              text: 'Like',
              onPressed: () {
              setState(() {
                body2 = AllImages();
              });
            },
              ),
          GButton(
            icon: Icons.notifications,
            text: 'Sms',
            onPressed: () {
                setState(() {
                  body2 = PageS();
                });
              }
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
          ),
        ],
      ),
      body: body2,
    );
  }
}
