import 'package:flutter/material.dart';
import '../theme_colors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColors.blue_10,
      // color: ThemeColors.settingsColor,
      alignment: Alignment.center,
      child: const Text('Settings Page',
          style: TextStyle(fontSize: 24, color: Colors.white)),
    );
  }
}
