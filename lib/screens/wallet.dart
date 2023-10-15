import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infloso/constants/images_url.dart';
import 'package:infloso/widgets/CustomTexts.dart';
import 'package:infloso/widgets/custom_appbar.dart';
import 'package:infloso/widgets/round_edged_button.dart';
import '../constants/colors.dart';
import '../constants/sized_box.dart';



class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.backgroundColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(65),
            child: Customappbar(
              title: 'Wallet',
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

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              vSizedBox20,
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: MyColors.blackColor),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ParagraphText("INR 0", fontSize: 16, fontWeight: FontWeight.w700, color: MyColors.blackColor,),
                    ParagraphText("Wallet Balance", fontSize: 14, fontWeight: FontWeight.w500, color: MyColors.blackColor,),
                  ],),
              ),
              vSizedBox20,

              RoundEdgedButton(
                text: 'Withdraw money to the bank',
                fontSize: 14,
                fontWeight: FontWeight.w600,

              ),
              vSizedBox20,

              Row(
                children: [
                  Image.asset(MyImages.privacy,width: 40,),
                  hSizedBox10,
                  Expanded(
                      child: ParagraphText("To protect your payment, privacy and to stay away from spam,"
                          "never transfer money or communicate outside of the infloso website or app."
                          " infloso provides security and guarentee of transaction & quality",
                        fontSize: 10, fontWeight: FontWeight.w500, color: MyColors.blackColor,)),

                ],),
              vSizedBox20,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ParagraphText("Transactions", fontSize: 16, fontWeight: FontWeight.w700, color: MyColors.blackColor,),
                  Image.asset(MyImages.loader,width:40),
                ],
              ),

            ],
          ),
        )
    );
  }
}
