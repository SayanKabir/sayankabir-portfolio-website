import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayankabir_potfolio/components/my_button.dart';
import 'package:sayankabir_potfolio/utils.dart';

class SugamkrishiPage extends StatelessWidget {
  const SugamkrishiPage({super.key});

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
                  bool isNarrow = constraints.maxWidth < 600;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Logo + Name
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.asset(
                                  'assets/images/projects/sugamkrishi-logo.png',
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 30),
                              Text(
                                'SugamKrishi',
                                style: GoogleFonts.bebasNeue(
                                  fontSize: 48,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ],
                          ),

                          // Action Buttons
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
                          _techTag('TensorFlow'),
                          _techTag('OpenAI'),
                          _techTag('Mandi API'),
                          _techTag('Weather API'),
                          _techTag('Schemes API'),
                        ],
                      ),
                    ],
                  );
                },
              ),

              const SizedBox(height: 30),

              // Description
              Text(
                'SugamKrishi is a one-stop platform for farmers, featuring a community forum and integrated marketplace. '
                    'The app leverages Firebase Firestore for real-time updates, offers CNN-powered crop disease recognition, '
                    'and includes an LLM-based chatbot for agri-advisory and support.',
                style: GoogleFonts.inter(
                  fontSize: 18,
                  height: 1.6,
                ),
              ),

              const SizedBox(height: 30),

              // Mockup Images - Horizontal Scroll
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: List.generate(
                    8,
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
        child: Icon(Icons.language_rounded, size: 45),
        onTap: () {
          launchExternalLink('https://sayankabir.github.io/sugamkrishi-landing-page/');
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
          launchExternalLink('https://github.com/SayanKabir/Sugam-Krishi');
        },
      ),
    ];
  }

  Widget _mockupImage(String name) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        'assets/images/projects/sugamkrishi-folder/$name.png',
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
