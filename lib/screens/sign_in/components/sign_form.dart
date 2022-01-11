

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:furniture_e_commerce_app/components/custom_surfix_icon.dart';
import 'package:furniture_e_commerce_app/components/default_button.dart';
import 'package:furniture_e_commerce_app/components/form_error.dart';
import 'package:furniture_e_commerce_app/constants/constants.dart';
import 'package:furniture_e_commerce_app/constants/size_config.dart';
import 'package:furniture_e_commerce_app/helper/keyboard.dart';
import 'package:furniture_e_commerce_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:furniture_e_commerce_app/screens/login_success/login_success_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  //editing controller
  final TextEditingController emailController =new TextEditingController();
  final TextEditingController passwordController =new TextEditingController();
  String? email;
  String? password;
  bool? remember = false;

  //firebase
  final _auth = FirebaseAuth.instance;
  // string for displaying the error Message
  String? errorMessage;

  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(

        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Lưu mật khẩu"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Quên mật khẩu?",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),

              ),

            ],
          ),

          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Đăng Nhập",
            press: () async {

             if (_formKey.currentState!.validate()) {
               try {
                await _auth
                    .signInWithEmailAndPassword(
                email: emailController.text,
                password: passwordController.text)
                    .then((uid) {
                Fluttertoast.showToast(msg: "Đăng nhập thành công");
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                });
                } on FirebaseAuthException catch(error){
    switch (error.code) {
    case "invalid-email":
    errorMessage = "Your email address appears to be malformed.";

    break;
    case "wrong-password":
    errorMessage = "Your password is wrong.";
    break;
    case "user-not-found":
    errorMessage = "User with this email doesn't exist.";
    break;
    case "user-disabled":
    errorMessage = "User with this email has been disabled.";
    break;
    case "too-many-requests":
    errorMessage = "Too many requests";
    break;
    case "operation-not-allowed":
    errorMessage = "Signing in with Email and Password is not enabled.";
    break;
    default:
    errorMessage = "An undefined Error happened.";
    }
    Fluttertoast.showToast(msg: errorMessage!);
    print(error.code);
    }

    //_formKey.currentState!.save();
                // ẩn bàn phím khi nhấn Đăng nhập
               // KeyboardUtil.hideKeyboard(context);
                //chuyển sang màn hình đăng nhập thành công
               // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
             }
            //},
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      controller: passwordController,
      onSaved: (value) => passwordController.text = value!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Nhập mật khẩu của bạn ",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) => emailController.text = value!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Nhập Email của bạn",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
