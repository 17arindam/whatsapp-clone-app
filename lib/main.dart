import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/screens/splash_screen.dart';
import 'package:whatsapp_clone/presentation/widgets/theme/style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    runApp(const MyApp());
  }, (error, stackTrace) {
    // Handle errors here, such as logging them or showing a user-friendly message
    print('Uncaught error: $error');
  });
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
