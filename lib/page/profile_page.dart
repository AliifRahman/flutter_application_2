import 'package:flutter/material.dart';
import '../bottom_navbar/bottom_nav.dart';
import '../route/app_routes.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentPageIndex = 2;

  void _onNavItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
    Navigator.pushReplacementNamed(
        context, AppRoutes.routes.keys.elementAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        backgroundColor: Colors.pink,
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: currentPageIndex,
        onTap: _onNavItemTapped,
      ),
      body: Container(
        color: Colors.pink,
        alignment: Alignment.center,
        child: const Text('Profile Page',
            style: TextStyle(fontSize: 24, color: Colors.white)),
      ),
    );
  }
}
