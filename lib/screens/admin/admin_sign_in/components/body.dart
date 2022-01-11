import 'package:flutter/material.dart';
import 'package:furniture_e_commerce_app/components/socal_card.dart';
import 'package:furniture_e_commerce_app/constants/constants.dart';
import 'package:furniture_e_commerce_app/constants/size_config.dart';
import 'package:furniture_e_commerce_app/screens/admin/admin_sign_in/components/AdminSignForm.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Text(
            "Admin",
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(28),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Quản lý mọi thứ dễ dàng hơn",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          SignForm(),
          SizedBox(height: SizeConfig.screenHeight * 0.08),

        ],
      ),
    );
  }
}




