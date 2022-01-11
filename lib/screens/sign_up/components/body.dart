import 'package:flutter/material.dart';
import 'package:furniture_e_commerce_app/components/socal_card.dart';
import 'package:furniture_e_commerce_app/constants/constants.dart';
import 'package:furniture_e_commerce_app/constants/size_config.dart';
import 'package:furniture_e_commerce_app/screens/sign_up/components/sign_up_form.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text("Đăng Ký",
            style: headingStyle,
          ),
          Text("Hoàn thành các thông tin \n hoặc tiếp tục với mạng xã hội",
            textAlign: TextAlign.center,
          ),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            SignUpForm(),
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
          Text(
            'By continuing your confirm that you agree \nwith our Term and Condition',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}




