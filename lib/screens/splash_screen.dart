import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _fadeCtrl =
      AnimationController(vsync: this, duration: const Duration(milliseconds: 800));
  late final Animation<double> _fade =
      CurvedAnimation(parent: _fadeCtrl, curve: Curves.easeInOut);

  @override
  void initState() {
    super.initState();
    // Fade-in saat masuk
    _fadeCtrl.forward();

    // Tahan 2 detik, lalu fade-out singkat dan navigasi
    Future.delayed(const Duration(seconds: 2), () async {
      if (!mounted) return;

      // set durasi reverse lebih cepat
      _fadeCtrl.duration = const Duration(milliseconds: 250);
      await _fadeCtrl.reverse();

      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/under-construction');
    });
  }

  @override
  void dispose() {
    _fadeCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // background putih
      body: Center(
        child: FadeTransition(
          opacity: _fade, // efek fade in/out
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Ukuran logo responsif: ~50% sisi terpendek, dibatasi 160–320 px
              final shortest = constraints.biggest.shortestSide;
              final double dim =
                  math.min(320.0, math.max(160.0, shortest * 0.5));

              return Image.asset(
                'assets/images/logo.png', // pastikan path ini benar
                width: dim,
                height: dim,
                fit: BoxFit.contain,
              );
            },
          ),
        ),
      ),
    );
  }
}