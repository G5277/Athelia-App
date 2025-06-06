import 'package:athelia/screens/nav_bar.dart';
import 'package:athelia/screens/profile/settings.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        iconTheme: IconThemeData(size: 36),
      ),
      routes: {
        Navbar.id: (context) => const Navbar(),
        SettingsPage.id: (context) => const SettingsPage(),
      },
      initialRoute: Navbar.id,
    );
  }
}
