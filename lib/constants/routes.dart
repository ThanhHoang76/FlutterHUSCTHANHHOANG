
import 'package:flutter/material.dart';
import 'package:furniture_e_commerce_app/screens/admin/admin_home.dart';
import 'package:furniture_e_commerce_app/screens/admin/admin_sign_in/admin_sign_in_screen.dart';
import 'package:furniture_e_commerce_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:furniture_e_commerce_app/screens/login_success/login_success_screen.dart';
import 'package:furniture_e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:furniture_e_commerce_app/screens/sign_up/sign_up_srceen.dart';
import 'package:furniture_e_commerce_app/screens/users/cart/cart_screen.dart';
import 'package:furniture_e_commerce_app/screens/users/complete_profile/complete_profile_screen.dart';
import 'package:furniture_e_commerce_app/screens/users/details/details_screen.dart';
import 'package:furniture_e_commerce_app/screens/users/home/home_srceen.dart';
import 'package:furniture_e_commerce_app/screens/users/otp/otp_screen.dart';
import 'package:furniture_e_commerce_app/screens/users/profile/profile_screen.dart';
import 'package:furniture_e_commerce_app/screens/users/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  AdminSignInScreen.routeName: (context) => AdminSignInScreen(),
  AdminHome.routeName: (context) => AdminHome(),
};