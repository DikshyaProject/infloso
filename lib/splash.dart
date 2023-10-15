import 'package:flutter/material.dart';
import 'package:infloso/constants/colors.dart';
import 'package:infloso/constants/images_url.dart';
import 'package:infloso/functions/navigation_functions.dart';
import 'package:infloso/screens/login_with_phone.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  NavigationPage() {
    push(context: context, screen: LoginWithPhone());
  }

  startTime()  {
    Future.delayed( Duration(seconds: 3), () {
        NavigationPage();
    });
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: MyColors.whiteColor,
            body: Center(
              child: Container(
                height: 200,
                child: Image.asset(
                  MyImages.splash_logo,
                ),
              ),
            )));
  }
}