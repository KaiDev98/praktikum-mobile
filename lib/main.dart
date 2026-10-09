import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/user.dart';
// import 'package:flutter_application_2/pages/home_page.dart';
// import 'package:flutter_application_2/pages/login_page.dart';
// import 'package:flutter_application_2/pages/register_page.dart';
import 'package:flutter_application_2/pages/welcome_page.dart';
import 'package:flutter_application_2/utils/app_colors.dart';

// Data contoh untuk menguji HomePage
const sampleUser = User(
  nim: '123456789',
  name: 'Isi nama kamu ',
  email: 'emailanda@ith.ac.id',
  role: 'Mahasiswa',
  phone: '081234567890',
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Mahasiswa',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',

        // Palet dari seed, primary dikunci ke oranye ITH
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
        ).copyWith(primary: AppColors.primary),

        // Latar halaman #F5F5F5
        scaffoldBackgroundColor: AppColors.background,

        // Card putih tanpa semburat warna
        cardTheme: const CardThemeData(
          color: AppColors.surface,
          surfaceTintColor: Colors.transparent,
          elevation: 2,
        ),

        // Field gaya garis bawah, tanpa kotak dan tanpa isian warna
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: AppColors.surface,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.border),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondaryText),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary, width: 2),
          ),
          floatingLabelStyle: TextStyle(color: AppColors.primaryDark),
        ),
      ),

      // Ganti sementara salah satu, simpan, lalu hot restart:
      home: const WelcomePage(),
      // home: const LoginPage(),
      // home: const RegisterPage(),
      // home: const HomePage(user: sampleUser),
    );
  }
}