import 'package:flutter/material.dart';
import 'package:infloso/widgets/round_edged_button.dart';

import '../constants/colors.dart';
import '../constants/images_url.dart';
import '../constants/sized_box.dart';
import '../functions/navigation_functions.dart';
import '../widgets/CustomTexts.dart';
import '../widgets/custom_text_field.dart';
import 'login_with_phone.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController Name = TextEditingController();

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
              vSizedBox60,
              Center(child: Image.asset(MyImages.splash_logo, height:120,)),
              vSizedBox10,

              ParagraphText('Create your Free Account', fontSize: 20, fontWeight: FontWeight.bold, color: MyColors.blackColor,),
              vSizedBox40,

              ParagraphText('Email', fontSize: 15,fontWeight: FontWeight.w600, color: MyColors.primaryColor,),
              vSizedBox10,

              CustomTextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Email ID'),
              vSizedBox10,
              ParagraphText('Tell as who you are', fontSize: 15,fontWeight: FontWeight.w600, color: MyColors.primaryColor,),
              vSizedBox10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                Column(children: [
                  ParagraphText('Influencer', fontSize: 15,fontWeight: FontWeight.w600, color: MyColors.blackColor,),

                ],),
                Column(children: [
                  ParagraphText('Brand', fontSize: 15,fontWeight: FontWeight.w600, color: MyColors.blackColor,),

                ],),
                Column(children: [
                  ParagraphText('Agency', fontSize: 15,fontWeight: FontWeight.w600, color: MyColors.blackColor,),

                ],),
              ],),
              vSizedBox10,
              ParagraphText('Whats your name?', fontSize: 15,fontWeight: FontWeight.w600, color: MyColors.primaryColor,),
              vSizedBox10,
              CustomTextField(
                  controller: Name,
                  hintText: 'Name'),

              vSizedBox10,
              ParagraphText('Password', fontSize: 15,fontWeight: FontWeight.w600, color: MyColors.primaryColor,),
              vSizedBox10,
              CustomTextField(
                  controller: pass,
                  hintText: 'Password'),

              vSizedBox10,


              RoundEdgedButton(
                text: 'Create an Account',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                onTap: (){
                  //loginWithEmail();
                },
              ),
              vSizedBox10,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ParagraphText('Already have an account', fontSize: 15, color: MyColors.grey2,),
                  hSizedBox05,
                  GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: (){
                        pushReplacement(context: context, screen: LoginWithPhone());
                      },
                      child: ParagraphText('Log in', fontSize: 16, fontWeight: FontWeight.w600, color: MyColors.primaryColor,)),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
