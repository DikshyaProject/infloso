import 'package:flutter/material.dart';
import 'package:infloso/constants/colors.dart';
import 'package:infloso/widgets/CustomTexts.dart';
class Customappbar extends StatelessWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? action;

  const Customappbar({Key? key,required this.title,this.action,this.leading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: AppBar(
        leading:leading,
        backgroundColor: MyColors.whiteColor,
      // shape: RoundedRectangleBorder(
      // borderRadius: BorderRadius.vertical(
      // bottom: Radius.circular(20),
      // ),
      // ),
      title:ParagraphText(title,fontSize: 20, color: MyColors.blackColor, fontWeight: FontWeight.w600,),
      centerTitle: false, actions: action,
      ),
    );
  }
}
