import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayankabir_potfolio/components/my_button.dart';
import 'package:sayankabir_potfolio/utils.dart';

class ParakeetPage extends StatelessWidget {
  const ParakeetPage({super.key});

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
              LayoutBuilder(
                builder: (context, constraints) {
                  final isNarrow = constraints.maxWidth < 600;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Logo + Name
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.asset(
                                  'assets/images/projects/parakeet.png',
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 30),
                              Text(
                                'Parakeet',
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
                      ),

                      const SizedBox(height: 10),

                      // Tech Tags
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          _techTag('Flutter'),
                          _techTag('Firebase'),
                          _techTag('Hive'),
                        ],
                      ),
                    ],
                  );
                },
              ),

              const SizedBox(height: 30),

              // Description
              Text(
                'Parakeet is a minimal real-time messaging app inspired by WhatsApp, built using Flutter, Firebase, and Hive. '
                    'It includes user authentication, real-time chat functionality, and a clean, performant UI for both Android and iOS.',
                style: GoogleFonts.inter(
                  fontSize: 18,
                  height: 1.6,
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
          'assets/images/projects/icons/github.png',
          height: 40,
          width: 40,
        ),
        onTap: () {
          launchExternalLink('https://github.com/SayanKabir/parakeet');
        },
      ),
    ];
  }

  static Widget _techTag(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.05),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.black12),
      ),
      child: Text(
        label,
        style: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
