import 'package:flutter/material.dart';
import '../bottom_navbar/bottom_nav.dart';
import '../route/app_routes.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int currentPageIndex = 1;

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
        title: const Text('Explore Page'),
        backgroundColor: Colors.orange,
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: currentPageIndex,
        onTap: _onNavItemTapped,
      ),
      body: Container(
        color: Colors.orange,
        alignment: Alignment.center,
        child: const Text('Explore Page',
            style: TextStyle(fontSize: 24, color: Colors.white)),
      ),
    );
  }
}
