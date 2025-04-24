import 'package:flutter/material.dart';
import 'package:blinkit_clone/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:blinkit_clone/models/theme_model.dart';

void main() {
  // Add error handling to help diagnose issues
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    debugPrint('Flutter error: ${details.exception}');
    debugPrint('Stack trace: ${details.stack}');
  };

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, themeModel, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Blinkit Clone',
          theme: ThemeData(
            primaryColor: const Color(0xFFFFD300),
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFFFFD300),
              brightness: themeModel.isDarkMode ? Brightness.dark : Brightness.light,
            ),
            scaffoldBackgroundColor: themeModel.isDarkMode ? Colors.black : Colors.white,
            appBarTheme: AppBarTheme(
              backgroundColor: themeModel.isDarkMode ? Colors.black : Colors.white,
              elevation: 0,
            ),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            primaryColor: const Color(0xFFFFD300),
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFFFFD300),
              brightness: Brightness.dark,
            ),
            scaffoldBackgroundColor: Colors.black,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.black,
              elevation: 0,
            ),
            useMaterial3: true,
          ),
          themeMode: themeModel.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          home: const HomeScreen(),
        );
      },
    );
  }
}
