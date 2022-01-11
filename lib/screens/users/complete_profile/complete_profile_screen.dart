import 'package:flutter/material.dart';
import 'package:furniture_e_commerce_app/screens/users/complete_profile/components/body.dart';
class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);
  static String routeName="/complete_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Đăng Kí"),
      ),
      body: Body(),
    );
  }
}
