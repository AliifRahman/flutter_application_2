import 'package:flutter/material.dart';
import '../bottom_navbar/bottom_nav.dart';
import '../route/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

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
        title: const Text('HomePage Demo'),
        backgroundColor: Colors.lightBlue,
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: currentPageIndex,
        onTap: _onNavItemTapped,
      ),
      body: Container(
        color: Colors.lightBlue,
        alignment: Alignment.center,
        child: const Text('Home Page',
            style: TextStyle(fontSize: 24, color: Colors.white)),
      ),
    );
  }
}
