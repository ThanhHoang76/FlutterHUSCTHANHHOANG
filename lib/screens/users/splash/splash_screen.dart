
import 'package:flutter/material.dart';
import 'package:furniture_e_commerce_app/screens/users/splash/components/body.dart';

import '../../../constants/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName ="/spllash";


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }

}
