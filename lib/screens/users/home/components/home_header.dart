import 'package:flutter/material.dart';
import 'package:furniture_e_commerce_app/constants/size_config.dart';
import 'package:furniture_e_commerce_app/screens/users/cart/cart_screen.dart';

import 'package:furniture_e_commerce_app/screens/users/home/components/icon_btn_with_counter.dart';
import 'package:furniture_e_commerce_app/screens/users/home/components/search_field.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchFeild(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            numOfItemint: 18,
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfItemint: 3,
            press: (){
              //phát triển sau
            },
          ),
        ],
      ),
    );
  }
}