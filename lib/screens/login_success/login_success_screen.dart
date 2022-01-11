import 'package:flutter/material.dart';
import 'package:furniture_e_commerce_app/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  LoginSuccessScreen({Key? key}) : super(key: key);
  static String routeName = "/login_success";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
      ),
      body: Body(),
    );
  }
}