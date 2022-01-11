import 'package:flutter/material.dart';
import 'package:furniture_e_commerce_app/components/custom_bottom_nav_bar.dart';
import 'package:furniture_e_commerce_app/constants/enums.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}