import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({super.key});

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fade;
  late Animation<Offset> _slide;

  bool _hasAnimated = false;

  // final List<_Role> roles = const [
  //   _Role('Flutter Developer', Icons.flutter_dash),
  //   _Role('Full‑Stack Web Developer', Icons.web),
  //   _Role('IBM Certified DevOps Engineer', Icons.engineering),
  //   _Role('Open‑Source Contributor', Icons.code),
  //   _Role('UI/UX Enthusiast', Icons.design_services),
  // ];
  final List<_Role> roles = const [
    _Role('Flutter Developer', Icons.flutter_dash),
    // _Role('Problem Solver (700+ LeetCode)', Icons.bolt),
    _Role('Full‑Stack Web Developer', Icons.web),
    _Role('DevOps & CI/CD', Icons.settings),
    _Role('Database Designer (SQL/NoSQL)', Icons.storage),
    // _Role('Open‑Source Contributor', Icons.code),
  ];


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _slide = Tween<Offset>(begin: const Offset(0, 0.1), end: Offset.zero)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  void _onVisibilityChanged(VisibilityInfo info) {
    if (!_hasAnimated && info.visibleFraction > 0.3) {
      _controller.forward();
      _hasAnimated = true;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width > 700;

    return VisibilityDetector(
      key: const Key('about-section'),
      onVisibilityChanged: _onVisibilityChanged,
      child: FadeTransition(
        opacity: _fade,
        child: SlideTransition(
          position: _slide,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'About Me',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 60,
                    fontWeight: FontWeight.w100,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),

                Text(
                  "I’m a B.Tech graduate in Information Technology from KIIT University, currently pursuing my M.Tech. "
                      "Specializing in Flutter, C++, SQL, and Python, I’ve solved over 700 LeetCode problems—showcasing strong problem-solving and algorithmic skills. "
                      "I’ve built and published multiple mobile and web apps, and as an IBM‑certified DevOps Engineer, I’ve implemented scalable systems using Docker, Kubernetes, and CI/CD. "
                      "I also bring expertise in designing and optimizing SQL and NoSQL databases for high performance and scalability.",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    height: 1.6,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 30),
                Text(
                  "Here's what I do:",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),

                isWide
                    ? Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 30,
                  runSpacing: 20,
                  children: roles.map(_roleItem).toList(),
                )
                    : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: roles
                      .map((r) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: _roleItem(r),
                  ))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _roleItem(_Role role) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(role.icon, size: 26, color: Colors.blueGrey),
        const SizedBox(width: 10),
        Text(
          role.label,
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _Role {
  final String label;
  final IconData icon;
  const _Role(this.label, this.icon);
}
