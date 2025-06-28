import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayankabir_potfolio/my_button.dart';
import 'package:sayankabir_potfolio/utils.dart';

class HomepagePage extends StatelessWidget {
  const HomepagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF6ED),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row
              LayoutBuilder(
                builder: (context, constraints) {
                  final isNarrow = constraints.maxWidth < 600;

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Logo + Name
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: Image.asset(
                              'assets/images/projects/homepage.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 30),
                          Text(
                            'Homepage',
                            style: GoogleFonts.bebasNeue(
                              fontSize: 48,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),

                      isNarrow
                          ? Column(children: _actionButtons())
                          : Row(children: _actionButtons()),
                    ],
                  );
                },
              ),

              const SizedBox(height: 30),

              // Description
              Text(
                'A place to call home in the vast ocean of the internet. '
                    'Homepage is a beautifully crafted personal site, built in Flutter Web, to showcase your work, '
                    'share thoughts, and build your online identity with elegance.',
                style: GoogleFonts.inter(
                  fontSize: 18,
                  height: 1.6,
                ),
              ),

              const SizedBox(height: 30),

              // Single Mockup Image
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/projects/homepage-mockup.png',
                    width: 600,
                    height: 360,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _actionButtons() {
    return [
      MyButton(
        child: Image.asset(
          'assets/images/projects/icons/linkedin.png',
          height: 40,
          width: 40,
        ),
        onTap: () {
          launchExternalLink('https://www.linkedin.com/posts/sayankabir_flutter-flutterweb-supabase-activity-7286050033659977728-7vaT?utm_source=share&utm_medium=member_desktop&rcm=ACoAADQMJ94BSmb43X5matzv4j14RtE0UuigDBQ');
        },
      ),
      const SizedBox(width: 12),
      MyButton(
        child: Image.asset(
          'assets/images/projects/icons/github.png',
          height: 40,
          width: 40,
        ),
        onTap: () {
          launchExternalLink('https://github.com/SayanKabir/homepage');
        },
      ),
    ];
  }
}
