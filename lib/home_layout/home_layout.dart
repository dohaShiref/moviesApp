
import 'package:flutter/material.dart';

import '../screens/browse_tab.dart';
import '../screens/search_tab.dart';
import '../screens/watch_list_tab.dart';
import '../screens/home_tab.dart';
import '../main.dart';

class homeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.black,
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: MyThemeData.BotomBarColor),
            child: BottomNavigationBar(
              onTap: (index) {
                currentPageIndex = index;
                setState(() {});
              },
              currentIndex: currentPageIndex,
              selectedItemColor: MyThemeData.Primaty_color,
              unselectedItemColor: MyThemeData.UnSelectedIemColor,
              selectedIconTheme:
              IconThemeData(color: MyThemeData.Primaty_color),
              unselectedIconTheme:
              IconThemeData(color: MyThemeData.UnSelectedIemColor),
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset('assets/homeIcon.png',
                        width: 37,
                        color: currentPageIndex == 0
                            ? MyThemeData.Primaty_color
                            : MyThemeData.UnSelectedIemColor),
                    label:'Home'),
                BottomNavigationBarItem(
                    label: 'Search',
                    icon: Image.asset('assets/search.png',
                        width: 37,
                        color: currentPageIndex == 1
                            ? MyThemeData.Primaty_color
                            : MyThemeData.UnSelectedIemColor)),
                BottomNavigationBarItem(
                    label: 'browse',
                    icon: Image.asset('assets/browse.png',
                        width: 37,
                        color: currentPageIndex == 2
                            ? MyThemeData.Primaty_color
                            : MyThemeData.UnSelectedIemColor)),
                BottomNavigationBarItem(
                    label: 'WatchList',
                    icon: Image.asset('assets/watchList.png',
                        width: 37,
                        color: currentPageIndex == 3
                            ? MyThemeData.Primaty_color
                            : MyThemeData.UnSelectedIemColor)),
              ],
            ),
          ),
          body: getCurrentPage(),
        ),
      ],
    );
  }

  Widget getCurrentPage() {
    if (currentPageIndex == 0) {
      return HomeTab();
    } else if (currentPageIndex == 1) {
      return SearchTab();
    } else if (currentPageIndex == 2) {
      return BrowseTab();
    }
    else{
      return WatchListTab();
    }
  }
}
