import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infloso/constants/images_url.dart';
import 'package:infloso/widgets/CustomTexts.dart';
import 'package:infloso/widgets/custom_appbar.dart';
import 'package:infloso/widgets/round_edged_button.dart';
import '../constants/colors.dart';
import '../constants/sized_box.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List exploreList = [
    {"title": "Elevate your Innerself with Senses", "image": MyImages.list2, "heading1": "Senses Healing & Detox Center" , "location": "Mumbai, Navi Mumbai",
      "heading2":"18 - 29 years", "heading3":"Visits", "gender":"Male, Female, Other", "meeting": "Barter"},
     {"title": "Fashion Correction", "image": MyImages.list3, "heading1": "Tokyotalkies" , "location": "Delhi, Navi Mumbai",
      "heading2":"17 - 29 years", "heading3":"Visits", "gender":"Male, Female, Other", "meeting": "Barter"},
     {"title": "Sweatwear Gang", "image": MyImages.list4, "heading1": "Thumos" , "location": "Bengaluru",
      "heading2":"22 - 29 years", "heading3":"Visits", "gender":"Male, Female, Other", "meeting": "Barter"},
     {"title": "LN Podcast Contest Bang 1.1", "image": MyImages.list5, "heading1": "Editor" , "location": "Pune, Maharastra",
      "heading2":"18 - 29 years", "heading3":"Visits", "gender":"Male, Female, Other", "meeting": "Barter"},
     {"title": "Ban Appetit with Zing", "image": MyImages.list6, "heading1": "Zing" , "location": "India",
      "heading2":"18 - 29 years", "heading3":"Visits", "gender":"Male, Female, Other", "meeting": "Barter"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: Customappbar(
            title: 'Explore',
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
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        child:  ListView.builder(
          itemCount: exploreList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {

              },
              child: Padding(
                padding:  EdgeInsets.only(top: 15, bottom: index == exploreList.length-1? 15:0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: MyColors.grey1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                        child: Image.asset(exploreList[index]['image'],
                          fit: BoxFit.fill,
                          height: 200,
                          width: MediaQuery.of(context).size.width,),
                      ),
                      vSizedBox20,


                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ParagraphText(exploreList[index]['title'], fontSize: 16, fontWeight: FontWeight.w600, color: MyColors.blackColor,),
                            vSizedBox10,

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 170,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        // crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.add_task, size: 15,),
                                          hSizedBox10,
                                          Expanded(child: ParagraphText(exploreList[index]['heading1'],  fontSize: 12, color: MyColors.blackColor,)),
                                        ],
                                      ),
                                      vSizedBox05,
                                      Row(
                                        children: [
                                          Icon(Icons.fastfood_outlined, size: 15,),
                                          hSizedBox10,
                                          ParagraphText(exploreList[index]['heading2'], fontSize: 12, color: MyColors.blackColor,),
                                        ],
                                      ),
                                      vSizedBox05,
                                      Row(
                                        children: [
                                          Icon(Icons.location_on_outlined, size: 15,),
                                          hSizedBox10,
                                          ParagraphText(exploreList[index]['heading3'], fontSize: 12, color: MyColors.blackColor,),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.map, size: 15,),
                                          hSizedBox10,
                                          Expanded(child: ParagraphText(exploreList[index]['location'], fontSize: 12, color: MyColors.blackColor,)),
                                        ],
                                      ),
                                      vSizedBox05,
                                      Row(
                                        children: [
                                          Icon(Icons.person, size: 15,),
                                          hSizedBox10,
                                          Expanded(child: ParagraphText(exploreList[index]['gender'], fontSize: 12, color: MyColors.blackColor,)),
                                        ],
                                      ),
                                      vSizedBox05,
                                      Row(
                                        children: [
                                          Icon(Icons.handshake, size: 15,),
                                          hSizedBox10,
                                          ParagraphText(exploreList[index]['meeting'], fontSize: 12, color: MyColors.blackColor,),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                            vSizedBox10,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(MyImages.instagram, height: 40,),
                                RoundEdgedButton(
                                  text: 'Apply',
                                  fontSize: 13,
                                  width: 130,
                                  height: 40,
                                  borderRadius: 30,
                                  fontWeight: FontWeight.w600,
                                  onTap: (){

                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),



                    ],
                  ),
                ),
              ),
            );
          },
        )
      ),
    );
  }
}
