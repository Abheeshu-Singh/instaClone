// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instaclone/pages/account.dart';
import 'package:instaclone/pages/home.dart';
import 'package:instaclone/pages/reel.dart';
import 'package:instaclone/pages/search.dart';
import 'package:instaclone/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReel(),
    UserShop(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _navigateBottomNavBar,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_call,
              ),
              label: 'reels'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
              ),
              label: 'shop'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'account'),
        ],
      ),
    );
  }
}
