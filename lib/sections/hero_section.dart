import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> with TickerProviderStateMixin {

  final String email = 'mailto:sayan.kabir.official@gmail.com';
  final String github = 'https://github.com/SayanKabir';
  final String linkedin = 'https://linkedin.com/in/sayankabir';
  final String leetcode = 'https://leetcode.com/u/SayanK';

  late AnimationController _controller;

  late Animation<double> _fadeHey;
  late Animation<double> _scaleHey;

  late Animation<double> _fadeImage;
  late Animation<double> _scaleImage;

  late Animation<double> _fadeName;
  late Animation<Offset> _slideName;

  late Animation<double> _fadeIcons;
  late Animation<Offset> _slideIcons;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 3));

    _fadeHey = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.0, 0.3, curve: Curves.easeOutQuart)),
    );

    _scaleHey = Tween<double>(begin: 0.4, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.0, 0.3, curve: Curves.easeOutQuart)),
    );

    _fadeImage = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.2, 0.6, curve: Curves.easeOutQuart)),
    );

    _scaleImage = Tween<double>(begin: 1.05, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.2, 0.6, curve: Curves.easeOutQuart)),
    );

    _fadeName = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.5, 0.85, curve: Curves.easeOutQuart)),
    );

    _slideName = Tween<Offset>(begin: const Offset(-0.2, 0), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.5, 0.85, curve: Curves.easeOutQuart)),
    );

    _fadeIcons = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.75, 1.0, curve: Curves.easeOutQuart)),
    );

    _slideIcons = Tween<Offset>(begin: const Offset(0.2, 0), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.75, 1.0, curve: Curves.easeOutQuart)),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final vh = MediaQuery.of(context).size.height;

    return SizedBox(
      height: vh * 0.9,
      child: Stack(
        children: [
          // Background radial glow
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topCenter,
                  radius: 0.9,
                  colors: [
                    Color(0x33FFD24C),
                    Color(0x11FFD24C),
                    Colors.transparent,
                  ],
                  stops: [0.0, 0.5, 1.0],
                ),
              ),
            ),
          ),

          // "Hey, there" (top-center)
          Align(
            alignment: Alignment.topCenter,
            child: FadeTransition(
              opacity: _fadeHey,
              child: ScaleTransition(
                scale: _scaleHey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Hey, there',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 80,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w100,
                      color: Colors.black,
                      height: 1.1,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Profile image (centered)
          FadeTransition(
            opacity: _fadeImage,
            child: ScaleTransition(
              scale: _scaleImage,
              child: Container(
                height: vh * 0.9,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/me2.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ),

          // Gradient overlay at bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: IgnorePointer(
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x11FFFFFF),
                      Color(0x66FFFFFF),
                      Color(0xBBFFFFFF),
                      Color(0xDDFFFFFF),
                    ],
                    stops: [0.3, 0.4, 0.75, 1.0],
                  ),
                ),
              ),
            ),
          ),

          // Name bottom-left
          Align(
            alignment: Alignment.bottomLeft,
            child: FadeTransition(
              opacity: _fadeName,
              child: SlideTransition(
                position: _slideName,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'I AM\n',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 28,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                            height: 1.3,
                          ),
                        ),
                        TextSpan(
                          text: 'SAYAN KABIR',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 90,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 4,
                            color: Colors.black,
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Social icons bottom-right
          Align(
            alignment: Alignment.bottomRight,
            child: FadeTransition(
              opacity: _fadeIcons,
              child: SlideTransition(
                position: _slideIcons,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.envelope),
                        iconSize: 24,
                        onPressed: () {
                          _launchUrl(email);
                        },
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.github),
                        iconSize: 24,
                        onPressed: () {
                          _launchUrl(github);
                        },
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.linkedin),
                        iconSize: 24,
                        onPressed: () {
                          _launchUrl(linkedin);
                        },
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.code),
                        iconSize: 24,
                        onPressed: () {
                          _launchUrl(leetcode);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}