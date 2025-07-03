import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayankabir_potfolio/components/my_button.dart';
import 'package:sayankabir_potfolio/utils.dart';

class PagePrismPage extends StatelessWidget {
  const PagePrismPage({super.key});

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
                                  'assets/images/projects/pageprism.png',
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 30),
                              Text(
                                'PagePrism',
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
                          _techTag('LangChain'),
                          _techTag('OpenAI Embeddings'),
                          _techTag('FAISS'),
                          _techTag('Streamlit'),
                        ],
                      ),
                    ],
                  );
                },
              ),

              const SizedBox(height: 30),

              // Description
              Text(
                'PagePrism is a Streamlit web app powered by LangChain that enables conversational interaction with PDF files. '
                    'It leverages OpenAI embeddings and FAISS vector indexing to understand content, preserve context, and support '
                    'semantic document exploration through intelligent Q&A.',
                style: GoogleFonts.inter(
                  fontSize: 18,
                  height: 1.6,
                ),
              ),

              // You can re-enable mockups below if you add screenshots later
              // const SizedBox(height: 30),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   padding: const EdgeInsets.symmetric(vertical: 20),
              //   child: Row(
              //     children: List.generate(
              //       5,
              //           (index) => Padding(
              //         padding: const EdgeInsets.only(right: 20),
              //         child: _mockupImage('$index'),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _actionButtons() {
    return [
      MyButton(
        child: const Icon(Icons.language_rounded, size: 45),
        onTap: () {
          launchExternalLink('https://pageprism.streamlit.app/');
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
          launchExternalLink('https://github.com/SayanKabir/PagePrism');
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

  // Add mockups if needed later
  Widget _mockupImage(String name) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        'assets/images/projects/pageprism-folder/$name.png',
        width: 250,
        height: 500,
        fit: BoxFit.cover,
      ),
    );
  }
}
