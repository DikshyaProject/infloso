import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infloso/constants/images_url.dart';
import 'package:infloso/widgets/CustomTexts.dart';
import 'package:infloso/widgets/custom_appbar.dart';
import 'package:infloso/widgets/round_edged_button.dart';
import '../constants/colors.dart';



class Campaigns extends StatefulWidget {
  const Campaigns({Key? key}) : super(key: key);

  @override
  State<Campaigns> createState() => _CampaignsState();
}

class _CampaignsState extends State<Campaigns> {
bool isActive = true;
bool isApplied = false;
bool isSaved = false;
bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: Customappbar(
            title: 'Campaigns',
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset(MyImages.splash_logo, height: 30,),
            ),
            action: [
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 5),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: MyColors.primaryColor, width: 2)
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(MyImages.profile, height: 50, width: 50, fit: BoxFit.cover,)),
                ),
              )
            ],
          )),

      body: Column(
        children: [
         Padding(
           padding:  EdgeInsets.only(left: 25,right: 20,top: 30),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             GestureDetector(
               behavior: HitTestBehavior.opaque,
                 onTap: (){
                 setState(() {
                   isActive = true;
                   isApplied = false;
                   isSaved = false;
                   isCompleted = false;
                 });
                 },
                 child: ParagraphText("Active", fontSize: 16, fontWeight: FontWeight.w700,
                   color: isActive == true? MyColors.primaryColor : MyColors.grey1,
                 )),
             GestureDetector(
               behavior: HitTestBehavior.opaque,
                 onTap: (){
                 setState(() {
                   isActive = false;
                   isApplied = true;
                   isSaved = false;
                   isCompleted = false;
                 });
                 },
                 child: ParagraphText("Applied", fontSize: 16, fontWeight: FontWeight.w700,
                   color: isApplied == true? MyColors.primaryColor : MyColors.grey1,
                 )),
             GestureDetector(
               behavior: HitTestBehavior.opaque,
                 onTap: (){
                 setState(() {
                   isActive = false;
                   isApplied = false;
                   isSaved = true;
                   isCompleted = false;
                 });
                 },
                 child: ParagraphText("Saved", fontSize: 16, fontWeight: FontWeight.w700,
                   color: isSaved == true? MyColors.primaryColor : MyColors.grey1,
                 )),
             GestureDetector(
               behavior: HitTestBehavior.opaque,
                 onTap: (){
                 setState(() {
                   isActive = false;
                   isApplied = false;
                   isSaved = false;
                   isCompleted = true;
                 });
                 },
                 child: ParagraphText("Completed", fontSize: 16, fontWeight: FontWeight.w700,
                   color: isCompleted == true? MyColors.primaryColor : MyColors.grey1,
                 )),
           ],),
         ),

          Padding(
            padding:  EdgeInsets.only(left: 25,right: 25,top: 40),
            child: RoundEdgedButton(
              text: 'Explore Campaigns',
              fontSize: 14,
              fontWeight: FontWeight.w600,

            ),
          ),
        ],
      )
    );
  }
}
