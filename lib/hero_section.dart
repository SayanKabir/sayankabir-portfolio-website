import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    var vh = MediaQuery.of(context).size.height;
    return SizedBox(
      height: vh * 0.9,
      child: Stack(
        children: [
          //Gradient
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topCenter, // adjust position
                  radius: 0.9,                // smaller radius
                  colors: [
                    Color(0x33FFD24C),       // translucent warm yellow
                    Color(0x11FFD24C),       // even softer
                    Colors.transparent,      // fade to nothing
                  ],
                  stops: [0.0, 0.5, 1.0],
                ),
              ),
            ),
          ),


          //Backdrop Text
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                child: Text(
                  'Hey, there',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 80,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                    height: 1.1,
                  ),
                ),
              )),

          //Image
          Container(
            height: vh * 0.9,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/me2.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          //White gradient
          Align(
            alignment: Alignment.bottomCenter,
            child: IgnorePointer(
              child: Container(
                height: 350, // Increased for smoother transition
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x11FFFFFF),
                      Color(0x66FFFFFF), // 40% white
                      Color(0xBBFFFFFF), // 80% white
                      Color(0xDDFFFFFF), // 90% white
                    ],
                    stops: [0.3, 0.4, 0.75, 1.0],
                  ),
                ),
              ),
            ),
          ),

          //Name Text
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Text(
                'I AM\nSAYAN KABIR',
                style: GoogleFonts.bebasNeue(
                  fontSize: 100,
                  fontWeight: FontWeight.w100,
                  // letterSpacing: -1.5,
                  height: 1.1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
