
import 'package:flutter/material.dart';

import 'components/body.dart';



class AdminSignInScreen extends StatelessWidget {
  static String routeName = "/admin_sign_in";

  const AdminSignInScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Body(),
    );
  }
}