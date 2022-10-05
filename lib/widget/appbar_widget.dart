import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme_provider.dart';

AppBar buildAppBar(BuildContext context) {
  final themeProvider = Provider.of<ThemeProvider>(context);
  final isDarkMode = themeProvider.isDarkMode;
  final icon = isDarkMode ? CupertinoIcons.sun_max : CupertinoIcons.moon_stars;
  final ValueNotifier<bool> _counter = ValueNotifier<bool>(true);
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      ValueListenableBuilder(
        valueListenable: _counter,
        builder: (BuildContext context, dynamic value, Widget? child) {
          return IconButton(
            icon: Icon(icon),
            onPressed: () {
              final provider =
                  Provider.of<ThemeProvider>(context, listen: false);
              if (provider.themeMode.name == 'dark') {
                provider.toggleTheme(false);
              } else {
                provider.toggleTheme(true);
              }
            },
          );
        },
      ),
    ],
  );
}
