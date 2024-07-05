import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/screens/splash_screen.dart';
import 'package:whatsapp_clone/presentation/widgets/theme/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter WhatsApp Clone',
      theme: ThemeData(
        primaryColor: primaryColor,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}


