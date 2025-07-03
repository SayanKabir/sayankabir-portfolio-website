import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayankabir_potfolio/components/my_button.dart';
import 'package:sayankabir_potfolio/utils.dart';

class PasswordzzzPage extends StatelessWidget {
  const PasswordzzzPage({super.key});

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
                      // Logo + Name Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.asset(
                                  'assets/images/projects/passwordzzz-logo.png',
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 30),
                              Text(
                                'Passwordzzz',
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
                          _techTag('SQLite'),
                          _techTag('AES Encryption'),
                          _techTag('Biometric Auth'),
                        ],
                      ),
                    ],
                  );
                },
              ),

              const SizedBox(height: 30),

              // Description
              Text(
                'Passwordzzz is an open-source password manager built with AES encryption and biometric authentication. '
                    'It securely stores credentials in an encrypted SQLite database and offers features like password generation, '
                    'strength analysis, and offline access.',
                style: GoogleFonts.inter(
                  fontSize: 18,
                  height: 1.6,
                ),
              ),

              const SizedBox(height: 30),

              // Mockup Images
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: List.generate(
                    7,
                        (index) => Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: _mockupImage('$index'),
                    ),
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
          'assets/images/projects/icons/playstore.png',
          height: 70,
          width: 70,
        ),
        onTap: () {
          launchExternalLink('https://play.google.com/store/apps/details?id=com.SayanKabir.pass_manager');
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
          launchExternalLink('https://github.com/SayanKabir/passwordzzz');
        },
      ),
    ];
  }

  Widget _mockupImage(String name) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        'assets/images/projects/passwordzzz-folder/$name.png',
        width: 250,
        height: 500,
        fit: BoxFit.cover,
      ),
    );
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
