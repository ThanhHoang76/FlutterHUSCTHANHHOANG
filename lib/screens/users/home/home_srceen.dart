import 'package:flutter/material.dart';
import 'package:furniture_e_commerce_app/components/custom_bottom_nav_bar.dart';
import 'package:furniture_e_commerce_app/constants/enums.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName="/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
