import 'package:flutter/material.dart';
import 'package:sayankabir_potfolio/home.dart';
import 'package:sayankabir_potfolio/project_pages/homepage_page.dart';
import 'package:sayankabir_potfolio/project_pages/pageprism_page.dart';
import 'package:sayankabir_potfolio/project_pages/parakeet_page.dart';
import 'package:sayankabir_potfolio/project_pages/sugamkrishi_page.dart';
import 'package:sayankabir_potfolio/project_pages/passwordzzz_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/passwordzzz': (context) => const PasswordzzzPage(),
        '/sugamkrishi': (context) => const SugamkrishiPage(),
        '/parakeet': (context) => const ParakeetPage(),
        '/homepage': (context) => const HomepagePage(),
        '/pageprism': (context) => const PagePrismPage(),
      },
    );
  }
}
