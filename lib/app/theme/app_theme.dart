// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

/// Theme utama aplikasi (Light Mode).
/// Warna dominan: Royal Blue (#2563EB)
/// Background dibuat soft agar nyaman di mata.

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    // Skema warna utama aplikasi
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF2563EB), // Warna utama (Royal Blue)
      secondary: Color(0xFF60A5FA), // Warna pendukung
      background: Color(0xFFF8FAFC), // Background utama
      surface: Colors.white, // Warna card / container
      error: Color(0xFFEF4444), // Warna error
    ),

    // Warna background scaffold
    scaffoldBackgroundColor: const Color(0xFFF8FAFC),

    // Konfigurasi AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF2563EB),
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),

    // Konfigurasi tombol utama
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF2563EB),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
    ),

    // Konfigurasi TextField / Input
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF2563EB), width: 1.5),
      ),
    ),

    // Konfigurasi teks global
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color(0xFF0F172A),
      ),
      bodyLarge: TextStyle(color: Color(0xFF1E293B)),
      bodyMedium: TextStyle(color: Color(0xFF475569)),
    ),
  );
}
