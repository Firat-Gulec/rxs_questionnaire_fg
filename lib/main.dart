import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'questionnaire/view/questionnaire_view.dart';
import 'theme_provider.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: ((context) => ThemeProvider()),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return GetMaterialApp(themeMode: themeProvider.themeMode,
      theme: MyThemes.darkTheme,
      darkTheme: MyThemes.darkTheme,
      debugShowCheckedModeBanner: false, home: QuestionnaireView());
  }
}
