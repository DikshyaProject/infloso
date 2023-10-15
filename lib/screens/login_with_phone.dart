import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infloso/functions/navigation_functions.dart';
import 'package:infloso/screens/otp.dart';
import '../constants/colors.dart';
import '../constants/images_url.dart';
import '../constants/sized_box.dart';
import '../widgets/CustomTexts.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/round_edged_button.dart';
import 'create_account.dart';
import 'login_with_email.dart';


class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({Key? key}) : super(key: key);

  @override
  State<LoginWithPhone> createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vSizedBox80,
              vSizedBox20,
              Center(child: Image.asset(MyImages.splash_logo, height: 200,)),

              ParagraphText('Login', fontSize: 20, fontWeight: FontWeight.w600, color: MyColors.blackColor,),
              vSizedBox05,
              ParagraphText('Please enter your phone', fontSize: 15, color: MyColors.grey2,),
              vSizedBox20,

              CustomTextField(
                  width: MediaQuery.of(context).size.width/1.1,
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  hintText: 'Phone'),


              vSizedBox10,

              RoundEdgedButton(
                text: 'Login',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                onTap: (){push(context: context, screen: OtpScreen());},
              ),
              vSizedBox10,
              RoundEdgedButton(
                text: 'LOGIN IN VIA EMAIL',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                iconSize: 25,
                color: MyColors.grey11,
                leftTextPadding: 60,
                rightTextPadding: 60,
                border_color: MyColors.grey12,
                onTap: (){
                  pushReplacement(context: context, screen: LoginWithMail());
                }


              ),
              vSizedBox10,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ParagraphText('Not signed up yet?', fontSize: 15, color: MyColors.grey2,),
                  hSizedBox05,
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                      onTap: (){
                      pushReplacement(context: context, screen: CreateAccount());
                      },
                      child: ParagraphText('Create an account', fontSize: 16, fontWeight: FontWeight.w600, color: MyColors.primaryColor,)),
                ],
              ),

            ],
          ),
        ),
      ),


    );
  }
}
