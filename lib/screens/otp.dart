import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/images_url.dart';
import '../constants/sized_box.dart';
import '../widgets/CustomTexts.dart';
import '../widgets/appbar.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/otp_widget.dart';
import '../widgets/round_edged_button.dart';



class OtpScreen extends StatefulWidget {


  OtpScreen({Key? key, }) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String correctOtp = "1234";
  bool loading = false;
  TextEditingController otpController = TextEditingController();


  showLoading() async{
    // toast('Otp matched');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: appBar(context: context),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Center(child: Image.asset(MyImages.splash_logo, height: 200,)),

              ParagraphText('Enter OTP', fontSize: 20, fontWeight: FontWeight.w600, color: MyColors.blackColor,),
              vSizedBox05,
              ParagraphText('We sent OTP on +1 xxx xxx x144',  fontSize: 15, color: MyColors.grey2,),

              vSizedBox20,

              ///otp field
              OtpVerification(
                bgColor: MyColors.backgroundColor,
                borderColor: Colors.transparent,
                textColor: MyColors.blackColor,
                correctOtp: correctOtp,
                textEditingController: otpController,
                load: showLoading,
                wrongOtp: (){
                  otpController.text = '';
                  setState(() {});
                },
                navigationFrom: 'otp_screen',
              ),

              InkWell(
                onTap: (){

                },
                child: Align(
                    alignment: Alignment.centerRight,
                    child: ParagraphText('Resend OTP?', fontWeight: FontWeight.w600,  color: MyColors.primaryColor,)),
              ),

              vSizedBox05,

              RoundEdgedButton(
                text: 'Submit',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                isLoad: loading,
                onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return BottomBar();
                 }));

                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
