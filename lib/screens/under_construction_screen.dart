import 'package:flutter/material.dart';

class UnderConstructionScreen extends StatelessWidget {
  const UnderConstructionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Gunakan Container dengan BoxDecoration untuk gradient
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFFE729), // Warna pertama
              Color(0xFFFFCC00), // Warna kedua
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  '🚧 This app is currently under development.\n\n'
                  '👨‍💻 Developer: Muhammad Anus Gul\n'
                  '🎨 UI/UX Designer & Assistant Dev: Irman\n\n'
                  'Thank you for previewing our early version!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}