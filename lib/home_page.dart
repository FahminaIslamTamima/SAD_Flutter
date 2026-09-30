 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0FF),

      appBar: AppBar(
        backgroundColor: const Color(0xFF6C5A9E),
        elevation: 0,
        centerTitle: false,

        title: Text(
          'My First App',
          style: GoogleFonts.playfairDisplay(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w600,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 26,
            ),
          ),

          const SizedBox(width: 8),
        ],
      ),

      body: Stack(
        children: [

          // Decorative circle - top right
          Positioned(
            top: -70,
            right: -60,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFE3D6FF),
              ),
            ),
          ),

          // Decorative circle - bottom left
          Positioned(
            bottom: -80,
            left: -70,
            child: Container(
              width: 190,
              height: 190,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFE8DFFF),
              ),
            ),
          ),

          // Main content
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 28),
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
                vertical: 38,
              ),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),

                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF6C5A9E).withOpacity(0.16),
                    blurRadius: 30,
                    spreadRadius: 2,
                    offset: const Offset(0, 15),
                  ),
                ],
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  // Flower icon
                  Container(
                    width: 95,
                    height: 95,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFFF0E9FF),
                    ),

                    child: const Icon(
                      Icons.local_florist,
                      size: 52,
                      color: Color(0xFF8067B7),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Small label
                  Text(
                    'WELCOME',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      letterSpacing: 3,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF9B89B8),
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Main heading
                  Text(
                    'Hello,Tamima!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF4B3D70),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Subtitle
                  Text(
                    'A little space for creativity,\nideas & beautiful things.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      height: 1.7,
                      color: const Color(0xFF81758F),
                    ),
                  ),

                  const SizedBox(height: 28),

                  // Decorative divider
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 35,
                        height: 1,
                        color: const Color(0xFFD8CBEF),
                      ),

                      const SizedBox(width: 10),

                      const Icon(
                        Icons.favorite_border_rounded,
                        size: 17,
                        color: Color(0xFF9B7FC7),
                      ),

                      const SizedBox(width: 10),

                      Container(
                        width: 35,
                        height: 1,
                        color: const Color(0xFFD8CBEF),
                      ),
                    ],
                  ),

                  const SizedBox(height: 28),

                  // Button
                  SizedBox(
                    width: double.infinity,
                    height: 52,

                    child: ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6C5A9E),
                        foregroundColor: Colors.white,
                        elevation: 0,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),

                      child: Text(
                        'Explore',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}