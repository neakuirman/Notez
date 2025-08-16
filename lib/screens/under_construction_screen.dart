import 'package:flutter/material.dart';

class UnderConstructionScreen extends StatelessWidget {
  const UnderConstructionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Logo di tengah
            Expanded(
              child: Center(
                child: Image.asset(
                  "assets/images/under_construction.png",
                  width: 510, // fixed sesuai permintaan
                  height: 510,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // Teks di bagian bawah
            Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Column(
                children: [
                  Text(
                    "Under Construction",
                    style: TextStyle(
                      fontSize: 28, // Heading sesuai teori UI/UX
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.3,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "We’re working hard to give you the best experience.\nStay tuned!",
                    style: TextStyle(
                      fontSize: 16, // Subheading
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700],
                      height: 1.4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}