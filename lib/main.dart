import 'package:flutter/material.dart';
import 'package:utsbottomnav/theme/theme_config.dart';
import 'dashboard.dart';
import 'package:utsbottomnav/splashscreen.dart';

void main() {
  runApp(const Utsbottomnav());
}

class Utsbottomnav extends StatelessWidget {
  const Utsbottomnav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeConfig.lightTheme;
    return MaterialApp(
      //title: Text("Bhinne", style: TextStyle(fontFamily: 'Fancy'),),
      theme: ThemeConfig.lightTheme,
      home: Splashscreen(),
    );
  }
}
