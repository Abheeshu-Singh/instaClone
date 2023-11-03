// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instaclone/util/explore_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey.shade300,
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey.shade500,
                ),
                Container(
                  child: Text(
                    'search',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid(),
    );
  }
}
