import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infloso/functions/navigation_functions.dart';
import 'package:infloso/screens/forgot_password.dart';
import 'package:infloso/widgets/bottom_bar.dart';
import '../constants/colors.dart';
import '../constants/images_url.dart';
import '../constants/sized_box.dart';
import '../widgets/CustomTexts.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/round_edged_button.dart';
import 'login_with_phone.dart';


class LoginWithMail extends StatefulWidget {
  const LoginWithMail({Key? key}) : super(key: key);

  @override
  State<LoginWithMail> createState() => _LoginWithMailState();
}

class _LoginWithMailState extends State<LoginWithMail> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vSizedBox80,
              vSizedBox20,
              Center(child: Image.asset(MyImages.splash_logo, height: 200,)),

              ParagraphText('Login', fontSize: 20, fontWeight: FontWeight.w600, color: MyColors.blackColor,),
              vSizedBox05,
              ParagraphText('Please Enter Email', fontSize: 15, color: MyColors.grey2,),
              vSizedBox20,

              CustomTextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Email ID'),
              vSizedBox10,
              CustomTextField(
                  controller: pass,
                  hintText: 'Password'),

              vSizedBox10,
              GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                   push(context: context, screen: ForgotPassword());
                  },
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: ParagraphText('Forgot Password?', fontSize: 15, fontWeight: FontWeight.w600, color: MyColors.primaryColor,))),

              RoundEdgedButton(
                text: 'Login',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                onTap: (){
                 push(context: context, screen: BottomBar());
                },
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height*0.28,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(height: 1, width: 130, color: MyColors.grey1,),
                  ParagraphText('Or', fontWeight: FontWeight.w600,),
                  Container(height: 1, width: 130, color: MyColors.grey1,),
                ],),

              RoundEdgedButton(
                text: 'LOGIN IN VIA PHONE',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                iconSize: 27,
                color: MyColors.grey11,
                leftTextPadding: 60,
                rightTextPadding: 60,
                border_color: MyColors.grey12,
                onTap: (){
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => const LoginWithPhone()));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
