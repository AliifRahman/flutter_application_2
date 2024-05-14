import 'package:flutter/material.dart';
import '../theme_colors.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColors.exploreColor,
      alignment: Alignment.center,
      child: const Text('Explore Page',
          style: TextStyle(fontSize: 24, color: Colors.white)),
    );
  }
}
