

import 'package:furniture_e_commerce_app/components/no_account_text.dart';
import 'package:furniture_e_commerce_app/constants/constants.dart';
import 'package:furniture_e_commerce_app/screens/admin/admin_sign_in/admin_sign_in_screen.dart';
import 'package:rolling_switch/rolling_switch.dart';
import 'package:flutter/material.dart';
import 'package:furniture_e_commerce_app/components/socal_card.dart';
import 'package:furniture_e_commerce_app/constants/size_config.dart';
import 'package:furniture_e_commerce_app/screens/sign_in/components/sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Chào mừng trở lại",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Đăng nhập bằng email và mật khẩu của bạn  \nhoặc với các mạng xã hội ",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
                SizedBox(height: getProportionateScreenHeight(20),),
                FlatButton.icon(onPressed: (){
                  Navigator.pushNamed(context, AdminSignInScreen.routeName);
                },
                    icon: const Icon(
                      Icons.nature_people,
                      color: kPrimaryColor,
                    ),
                    label: Text(
                      "Admin ? Login here !",
                      style: TextStyle(color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}