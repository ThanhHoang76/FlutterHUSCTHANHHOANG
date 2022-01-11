import 'package:flutter/material.dart';
import 'package:furniture_e_commerce_app/constants/size_config.dart';
import 'package:furniture_e_commerce_app/screens/users/home/components/categories.dart';
import 'package:furniture_e_commerce_app/screens/users/home/components/discount_banner.dart';
import 'package:furniture_e_commerce_app/screens/users/home/components/home_header.dart';
import 'package:furniture_e_commerce_app/screens/users/home/components/popular_product.dart';
import 'package:furniture_e_commerce_app/screens/users/home/components/special_offers.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenWidth(20),),
                const HomeHeader(),
                SizedBox(height: getProportionateScreenWidth(30),),
                const DiscountBanner(),
                Categories(),
                const SpecialOffers(),
                SizedBox(height: getProportionateScreenWidth(30)),
                const PopularProducts(),
                SizedBox(height: getProportionateScreenWidth(30)),
              ],
            ),
      ),
    );
  }
}








