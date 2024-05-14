import 'package:flutter/material.dart';
import 'page/home_page.dart';
import 'page/explore_page.dart';
import 'page/profile_page.dart';
import 'page/settings_page.dart';
import 'bottom_navbar/bottom_nav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  void _onNavItemTapped(int index) {
    _pageController.jumpToPage(index);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [
          HomePage(),
          ExplorePage(),
          ProfilePage(),
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: _currentIndex,
        onTap: _onNavItemTapped,
      ),
    );
  }
}
