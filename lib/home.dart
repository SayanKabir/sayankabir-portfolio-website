import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayankabir_potfolio/sections/about_section.dart';
import 'package:sayankabir_potfolio/sections/contact_section.dart';
import 'package:sayankabir_potfolio/sections/footer_section.dart';
import 'package:sayankabir_potfolio/sections/hero_section.dart';
import 'package:sayankabir_potfolio/sections/projects_section.dart';
import 'package:sayankabir_potfolio/sections/skills_section.dart';
import 'navbar/navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _heroKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void scrollTo(GlobalKey key) {
    final ctx = key.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF6ED),
      body: Stack(
        children: [
          // Scrollable content
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 70), // Space for navbar

                // Hero
                HeroSection(key: _heroKey),
                const SizedBox(height: 60),

                // About Me
                Container(
                  key: _aboutKey,
                  child: const AboutSection(),
                ),

                const SizedBox(height: 200),

                // Projects
                Padding(
                  key: _projectsKey,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Recent Projects',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 60,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                const ProjectsSection(),

                const SizedBox(height: 60),

                // Skills
                Padding(
                  key: _skillsKey,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Skills',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 60,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const SkillsSection(),

                const SizedBox(height: 60),
                const SizedBox(height: 200),

                // Contact
                Padding(
                  key: _contactKey,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: const ContactSection(),
                ),
                const SizedBox(height: 60),

                const FooterSection(),
              ],
            ),
          ),

          // Fixed NavBar on top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: NavBar(
              onNavClick: (section) {
                switch (section) {
                  case 'hero':
                    scrollTo(_heroKey);
                    break;
                  case 'about':
                    scrollTo(_aboutKey);
                    break;
                  case 'projects':
                    scrollTo(_projectsKey);
                    break;
                  case 'skills':
                    scrollTo(_skillsKey);
                    break;
                  case 'contact':
                    scrollTo(_contactKey);
                    break;
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
