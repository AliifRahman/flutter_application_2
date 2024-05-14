import 'package:flutter/material.dart';
import '../bottom_navbar/bottom_nav.dart';
import '../route/app_routes.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int currentPageIndex = 3;

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
        title: const Text('Settings Page'),
        backgroundColor: Colors.purple,
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: currentPageIndex,
        onTap: _onNavItemTapped,
      ),
      body: Container(
        color: Colors.purple,
        alignment: Alignment.center,
        child: const Text('Settings Page',
            style: TextStyle(fontSize: 24, color: Colors.white)),
      ),
    );
  }
}
