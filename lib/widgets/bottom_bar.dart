import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/images_url.dart';
import '../screens/campaigns.dart';
import '../screens/home.dart';
import '../screens/profile.dart';
import '../screens/wallet.dart';




class BottomBar extends StatefulWidget {

  BottomBar({Key? key, }) : super(key: key);

  @override
  State<BottomBar> createState() => BottomBarState();
}

class BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;


  void onItemTapped(int index) {
    setState(() {
      print('pressed $_selectedIndex index');
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: [
            HomeScreen(),
            Campaigns(),
            Wallet(),
            Profile(),

          ].elementAt(_selectedIndex),
        ),

        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 15.0, // soften the shadow
                spreadRadius: 5.0, //extend the shadow
                offset: Offset(
                  5.0, // Move to right 5  horizontally
                  5.0, // Move to bottom 5 Vertically
                ),
              )
            ]
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedFontSize: 14,
            elevation: 0,
            unselectedFontSize: 12,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: 'Explore',
                icon: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(CupertinoIcons.search)
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:  Icon(CupertinoIcons.search, color: MyColors.primaryColor,)
                ),
                backgroundColor:MyColors.whiteColor,
              ),
              BottomNavigationBarItem(
                label: 'Campaingns',
                icon: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:Icon(CupertinoIcons.cube_box,)
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(CupertinoIcons.cube_box, color: MyColors.primaryColor,)
                ),
                backgroundColor:MyColors.whiteColor,
              ),


              BottomNavigationBarItem(
                label: 'Wallet',
                icon: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(Icons.wallet,)
                ),
                activeIcon: Padding(
                  padding:  EdgeInsets.all(5.0),
                  child:Icon(Icons.wallet, color: MyColors.primaryColor,)
                ),
                backgroundColor:MyColors.whiteColor,
              ),

              BottomNavigationBarItem(
                label: 'Profile',
                icon: Padding(
                    padding: const EdgeInsets.all(5.0),
                  child: Icon(CupertinoIcons.person, )
                ),
                activeIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                  child:Icon(CupertinoIcons.person, color: MyColors.primaryColor,)
                ),
                backgroundColor:MyColors.whiteColor,
              ),

            ],
            currentIndex: _selectedIndex,
            selectedItemColor:  MyColors.primaryColor,
            onTap: onItemTapped,
          ),
        ),
      );

  }
}