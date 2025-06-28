import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  final String email = 'mailto:sayan.kabir.official@gmail.com';
  final String github = 'https://github.com/SayanKabir';
  final String linkedin = 'https://linkedin.com/in/sayankabir';
  final String leetcode = 'https://leetcode.com/u/SayanK';

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

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
          Text(
            'Sayan Kabir',
            style: GoogleFonts.bebasNeue(
              fontSize: 32,
              color: Colors.white,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '© $year All rights reserved. Built with Flutter.',
            style: GoogleFonts.inter(
              fontSize: 14,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),

          Wrap(
            spacing: 20,
            alignment: WrapAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.email, color: Colors.white),
                onPressed: () => _launchUrl(email),
                tooltip: 'Email',
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.github, color: Colors.white),
                onPressed: () => _launchUrl(github),
                tooltip: 'GitHub',
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
                onPressed: () => _launchUrl(linkedin),
                tooltip: 'LinkedIn',
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.code, color: Colors.white),
                onPressed: () => _launchUrl(leetcode),
                tooltip: 'LeetCode',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
