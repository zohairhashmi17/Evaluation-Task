import 'package:evaluation_task/custom_icons.dart';
import 'package:evaluation_task/screens/home_screen.dart';
import 'package:evaluation_task/screens/player_screen.dart';
import 'package:evaluation_task/screens/profile_screen.dart';
import 'package:evaluation_task/screens/search_screen.dart';
import 'package:evaluation_task/screens/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTabs extends StatefulWidget {
  const MyTabs({Key? key}) : super(key: key);

  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {


  int _currentIndex = 1;

  final tabs = [
    PlayerScreen(),
    SearchScreen(),
    HomeScreen(),
    SettingsScreen(),
    ProfileScreen()
  ];

  List<IconData> icons = [
    CustomIcons.gamepad,
    CustomIcons.search,
    CustomIcons.home,
    CustomIcons.settings,
    CustomIcons.user
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF000719),
      body: Stack(
        children: [
          tabs[_currentIndex],

          Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              margin: EdgeInsets.only(top: 675),
              padding: EdgeInsets.all(10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      //begin color
                      Colors.white.withOpacity(0.09),
                      //end color
                      Colors.white.withOpacity(0.03),
                    ]
                ),
              ),
              child: ListView.builder(
                  itemCount: icons.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: (){
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    child: Row(
                      children: [
                        index == _currentIndex ?
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  //begin color
                                  Color(0XFFFF7618),
                                  //end color
                                  Color(0XFF131F3E),
                                ]
                            ),
                          ),
                          child: Icon(
                            icons[index],
                            color: Colors.white.withOpacity(0.75),
                            size: 20,
                          ),
                        ) :
                        Container(
                          height: 25,
                          width: 25,
                          child: Icon(
                            icons[index],
                            color: Colors.white.withOpacity(0.75),
                            size: 20,
                          ),
                        ),
                        SizedBox(width: 35,)
                      ],
                    ),
                  )),
            ),
          )

        ],
      )

    );
  }
}