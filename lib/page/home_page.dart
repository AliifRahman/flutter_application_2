import 'package:flutter/material.dart';
import '../theme_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColors.nearlyWhite,
      alignment: Alignment.center,
      child: const Text('Home Page',
          style: TextStyle(fontSize: 24, color: ThemeColors.blue_primary)),
    );
  }
}
