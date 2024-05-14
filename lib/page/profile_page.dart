import 'package:flutter/material.dart';
import '../theme_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColors.nearlyWhite,
      alignment: Alignment.center,
      child: const Text('Profile Page',
          style: TextStyle(fontSize: 24, color: ThemeColors.blue_primary)),
    );
  }
}
