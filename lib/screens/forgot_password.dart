import 'package:flutter/material.dart';
import 'package:infloso/constants/colors.dart';
import 'package:infloso/constants/images_url.dart';
import 'package:infloso/constants/sized_box.dart';
import 'package:infloso/functions/navigation_functions.dart';
import 'package:infloso/screens/login_with_email.dart';
import 'package:infloso/widgets/CustomTexts.dart';
import 'package:infloso/widgets/custom_text_field.dart';
import 'package:infloso/widgets/round_edged_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();

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

              ParagraphText('Forgot Password', fontSize: 20, fontWeight: FontWeight.w600, color: MyColors.blackColor,),
              vSizedBox20,

              ParagraphText('Email', fontSize: 14, fontWeight:FontWeight.w600, color: MyColors.blackColor,),
              vSizedBox05,
              CustomTextField(
                  width: MediaQuery.of(context).size.width/1.1,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Email'),


              vSizedBox10,

              RoundEdgedButton(
                text: 'Send',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                onTap: (){

                  },

              ),
              vSizedBox10,

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ParagraphText('Back to ', fontSize: 14, color: MyColors.grey2,),
                  hSizedBox05,
                  GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: (){
                        pushReplacement(context: context, screen: LoginWithMail());
                      },
                      child: ParagraphText('Login', fontSize: 15, fontWeight: FontWeight.w600, color: MyColors.primaryColor,)),
                ],
              ),

            ],
          ),
        ),
      ),


    );
  }
}
