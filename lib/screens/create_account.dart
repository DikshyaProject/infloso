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
  bool isInfluencer = true;
  bool isBrand = false;
  bool isAgency = false;

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
              vSizedBox05,

              CustomTextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Email ID'),
              vSizedBox20,
              ParagraphText('Tell as who you are', fontSize: 15,fontWeight: FontWeight.w600, color: MyColors.primaryColor,),
              vSizedBox10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    setState(() {
                      isInfluencer=true;
                      isBrand=false;
                      isAgency=false;
                    });
                  },
                  child: Container(
                    child: Column(children: [
                      Image.asset(MyImages.create_1, height: 80, color: isInfluencer==true? MyColors.primaryColor : MyColors.grey1,),
                      ParagraphText('Influencer', fontSize: 14,fontWeight: FontWeight.w600,
                        color: isInfluencer==true? MyColors.primaryColor : MyColors.grey1,
                      ),

                    ],),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    setState(() {
                      isInfluencer=false;
                      isBrand=true;
                      isAgency=false;
                    });
                  },
                  child: Container(
                    child: Column(children: [
                      Image.asset(MyImages.create_2, height: 80, color: isBrand==true? MyColors.primaryColor : MyColors.grey1,),
                      ParagraphText('Brand', fontSize: 14,fontWeight: FontWeight.w600,
                        color: isBrand==true? MyColors.primaryColor : MyColors.grey1,
                      ),

                    ],),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    setState(() {
                      isInfluencer=false;
                      isBrand=false;
                      isAgency=true;
                    });
                  },
                  child: Container(
                    child: Column(children: [
                      Image.asset(MyImages.create_3, height: 80,  color: isAgency==true? MyColors.primaryColor : MyColors.grey1,),
                      ParagraphText('Agency', fontSize: 14,fontWeight: FontWeight.w600,
                        color: isAgency==true? MyColors.primaryColor : MyColors.grey1,
                      ),

                    ],),
                  ),
                ),
              ],),
              vSizedBox20,
              ParagraphText('Whats your name?', fontSize: 15,fontWeight: FontWeight.w600, color: MyColors.primaryColor,),
              vSizedBox05,
              CustomTextField(
                  controller: Name,
                  hintText: 'Name'),

              vSizedBox20,
              ParagraphText('Password', fontSize: 15,fontWeight: FontWeight.w600, color: MyColors.primaryColor,),
              vSizedBox05,
              CustomTextField(
                  controller: pass,
                  hintText: 'Password'),

              vSizedBox10,


              RoundEdgedButton(
                text: 'Create an Account',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                onTap: (){
                  //loginWithEmail();
                },
              ),
              vSizedBox10,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ParagraphText('Already have an account', fontSize: 14, color: MyColors.grey2,),
                  hSizedBox05,
                  GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: (){
                        pushReplacement(context: context, screen: LoginWithPhone());
                      },
                      child: ParagraphText('Log in', fontSize: 15, fontWeight: FontWeight.w600, color: MyColors.primaryColor,)),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
