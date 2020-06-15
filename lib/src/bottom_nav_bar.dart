import 'package:flutter/material.dart';
import 'package:podcast_ui/src/screens/favorite_screen.dart';
import 'package:podcast_ui/src/screens/home_screen.dart';
import 'package:podcast_ui/src/screens/trending_screen.dart';
import 'package:podcast_ui/src/user_menu.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;

  ///List of Screens
  List _pages = [
    HomeScreen(),
    FavoriteScreen(),
    TrendingScreen(),
    UserMenu(),
  ];

  ///List of Icons
  List<IconData> _icons = [
    Icons.home,
    Icons.favorite_border,
    Icons.blur_on,
    Icons.person,
  ];

  ///Building Bottom Navigation Bar Item
  BottomNavigationBarItem _buildIcons(int index) {
    return BottomNavigationBarItem(
      title: Text(''),
      icon: Icon(
        _icons[index],
        color: _selectedIndex == index ? Colors.pink : Colors.grey,
        size: 35,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: UserMenu(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) {
            index == 3
                ? _scaffoldKey.currentState.openDrawer()
                : setState(() {
                    _selectedIndex = index;
                  });
          },
          items: _icons
              .asMap()
              .entries
              .map(
                (mapEntry) => _buildIcons(mapEntry.key),
              )
              .toList(),
        ),
      ),
    );
  }
}
