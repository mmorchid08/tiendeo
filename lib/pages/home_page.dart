import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tiendo_ui/nav_bar/nav_bar.dart';
import 'package:tiendo_ui/widgets/app_bar.dart';
import 'package:tiendo_ui/widgets/list_cat.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          // padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(),
              ListCat(),
            ],
          ),
        ),
      ),
    );
  }
}

//  bottomNavigationBar: BottomNavBar(controller: _controller),
