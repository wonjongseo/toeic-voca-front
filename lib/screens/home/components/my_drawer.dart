
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/screens/home/home_screen.dart';
import 'package:jongseo_toeic/screens/my/my_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(child: Text('')),
          ListTile(
            onTap : () {
              Get.toNamed(HOME_PATH);
            },
            leading: Icon(Icons.home),
            title: const Text('Home'),
          ),
          ListTile(
            onTap : () {
              Get.toNamed(MY_PATH);
            },
            leading: Icon(Icons.person),
            title: const Text('My Page'),
          ),
          ListTile(
            onTap : () {
              // Get.toNamed(SETTING_PATH)
            },
            leading: Icon(Icons.settings),
            title: const Text('Settings'),
          )
        ],
      ),
    );
  }
}
