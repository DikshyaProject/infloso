import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infloso/constants/images_url.dart';
import 'package:infloso/widgets/CustomTexts.dart';
import 'package:infloso/widgets/custom_appbar.dart';
import 'package:infloso/widgets/round_edged_button.dart';
import '../constants/colors.dart';
import '../constants/sized_box.dart';



class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.backgroundColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(65),
            child: Customappbar(
              title: 'Profile',
              leading: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Image.asset(MyImages.splash_logo, height: 30,),
              ),

            )),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60),
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      color: MyColors.primaryColor.withOpacity(0.8),
                    ),
                  ),

                  Positioned(
                    bottom: 20,
                    left: MediaQuery.of(context).size.width/2.5,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: MyColors.primaryColor, width: 2)
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(MyImages.profile, height: 80, width: 80, fit: BoxFit.cover,)),
                    ),
                  ),
                ],
              ),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ParagraphText("Racheal Morillo", fontSize: 15, fontWeight: FontWeight.w700, color: MyColors.blackColor,),
                    ParagraphText("Racheal.morillo@gmail.com", fontSize: 14,color: MyColors.grey1,),


                    vSizedBox20,
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: MyColors.blackColor),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Column(
                          children: [
                            vSizedBox05,
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ParagraphText("About", fontSize: 15, fontWeight: FontWeight.w700, color: MyColors.blackColor,),
                                    ParagraphText("Basic info about yourself", fontSize: 12, fontWeight: FontWeight.w500, color: MyColors.blackColor,),
                                  ],),
                                Spacer(),

                                Image.asset(MyImages.rightarrow,width: 15,color: MyColors.grey1,)
                              ],
                            ),
                            vSizedBox05,
                            Container(height: 1, width: MediaQuery.of(context).size.width, color: MyColors.grey1,),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ParagraphText("Preferences", fontSize: 15, fontWeight: FontWeight.w700, color: MyColors.blackColor,),
                                    ParagraphText("Brands you want to work with", fontSize: 12, fontWeight: FontWeight.w500, color: MyColors.blackColor,),
                                  ],),
                                Spacer(),

                                Image.asset(MyImages.rightarrow,width: 15,color: MyColors.grey1,)
                              ],
                            ),
                            vSizedBox05,
                            Container(height: 1, width: MediaQuery.of(context).size.width, color: MyColors.grey1,),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [



                                    ParagraphText("Categories", fontSize: 15, fontWeight: FontWeight.w700, color: MyColors.blackColor,),
                                    ParagraphText("Your Specialistaion", fontSize: 12, fontWeight: FontWeight.w500, color: MyColors.blackColor,),


                                  ],),
                                Spacer(),

                                Image.asset(MyImages.rightarrow,width: 15,color: MyColors.grey1,)
                              ],
                            ),
                            vSizedBox05,
                            Container(height: 1, width: MediaQuery.of(context).size.width, color: MyColors.grey1,),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [



                                    ParagraphText("Preferences", fontSize: 15, fontWeight: FontWeight.w700, color: MyColors.blackColor,),
                                    ParagraphText("Brands you want to work with", fontSize: 12, fontWeight: FontWeight.w500, color: MyColors.blackColor,),

                                  ],),
                                Spacer(),

                                Image.asset(MyImages.rightarrow,width: 15,color: MyColors.grey1,)
                              ],
                            ),
                            vSizedBox05,
                            Container(height: 1, width: MediaQuery.of(context).size.width, color: MyColors.grey1,),
                            Row(

                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [


                                    ParagraphText("Settings", fontSize: 15, fontWeight: FontWeight.w700, color: MyColors.blackColor,),
                                    ParagraphText("Control your account", fontSize: 12, fontWeight: FontWeight.w500, color: MyColors.blackColor,),


                                  ],),
                                Spacer(),

                                Image.asset(MyImages.rightarrow,width: 15,color: MyColors.grey1,)

                              ],
                            ),
                            vSizedBox05,
                          ],
                        ),
                      ),
                    ),

                    vSizedBox10,

                    RoundEdgedButton(
                      text: 'SIGNOUT',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      onTap: (){

                      },
                    ),

                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
