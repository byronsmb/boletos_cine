import 'package:boletos_cine/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // tested with just a hot reload.

        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 23, 27, 48),
        ),
        //appBarTheme: AppBarTheme(backgroundColor: Colors.),
        useMaterial3: true,
      ),

      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   /* dark theme settings */
      // ),
      home: const MainPage(),
    );
  }
}
