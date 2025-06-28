import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final year = DateTime.now().year;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      color: const Color(0xFF222222),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Your name or branding
          Text(
            'Sayan Kabir',
            style: GoogleFonts.bebasNeue(
              fontSize: 32,
              color: Colors.white,
              letterSpacing: 1.2,
            ),
          ),

          const SizedBox(height: 10),

          // Links or credits
          Text(
            '© $year All rights reserved. Built with Flutter.',
            style: GoogleFonts.inter(
              fontSize: 14,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 20),

          // Social icons (optional)
          Wrap(
            spacing: 20,
            children: [
              IconButton(
                icon: const Icon(Icons.email, color: Colors.white),
                onPressed: () {
                  // launch mailto:
                },
              ),
              IconButton(
                icon: const Icon(Icons.link, color: Colors.white),
                onPressed: () {
                  // open LinkedIn or GitHub
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
