import 'package:flutter/material.dart';
import 'dart:async';
import 'dashboard_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _photoSlideAnimation;
  late Animation<Offset> _titleSlideAnimation;
  late Animation<double> _nameFadeAnimation;

  @override
  void initState() {
    super.initState();
    
    // Satu controller untuk semua animasi
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1800),
      vsync: this,
    );
    
    // 1. ANIMASI FOTO - Slide dari KIRI ke KANAN
    _photoSlideAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0), // Mulai di kiri layar
      end: Offset.zero,                // Ke posisi normal
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
    ));
    
    // 2. ANIMASI JUDUL - Slide dari KANAN ke KIRI
    _titleSlideAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),  // Mulai di kanan layar
      end: Offset.zero,                // Ke posisi normal
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
    ));
    
    // 3. ANIMASI NAMA + LOADING - Fade in bersamaan
    _nameFadeAnimation = Tween<double>(
      begin: 0.0,  // Tidak terlihat
      end: 1.0,    // Terlihat penuh
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.5, 1.0, curve: Curves.easeIn),
    ));
    
    // Mulai animasi
    _controller.forward();
    
    // Pindah ke Dashboard setelah 3 detik
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const DashboardScreen()),
        );
      }
    });

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1956),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // === BAGIAN ATAS: FOTO (kiri) + JUDUL (kanan) ===
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // FOTO - Slide dari kiri
                    SlideTransition(
                      position: _photoSlideAnimation,
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 4),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 15,
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/profile.jpg',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.grey.shade300,
                                child: const Icon(
                                  Icons.person,
                                  size: 60,
                                  color: Colors.grey,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    
                    const SizedBox(width: 20),
                    
                    // JUDUL - Slide dari kanan
                    SlideTransition(
                      position: _titleSlideAnimation,
                      child: const Text(
                        'MYDASH',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 60),
                
                // === BAGIAN BAWAH: NAMA + LOADING (Fade in bersamaan) ===
                Opacity(
                  opacity: _nameFadeAnimation.value,
                  child: Column(
                    children: [
                      // Nama & NIM
                      const Text(
                        'Khoerunnisa Somawijaya | 152023096',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFFFAF3EB),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      
                      const SizedBox(height: 15),
                      
                      Opacity(
                        opacity: (_nameFadeAnimation.value - 0.4).clamp(0.0, 1.0),
                        child: SizedBox(
                          width: 320,
                          child: LinearProgressIndicator(
                            valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xFF9ECDFB),
                            ),
                            backgroundColor: Colors.white24,
                            minHeight: 3,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

