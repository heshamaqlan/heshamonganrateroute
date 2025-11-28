import 'package:flutter/material.dart';
import 'package:heshamonganrateroute/content/approute.dart';
import 'package:heshamonganrateroute/controller/heshamaqlan.dart';
import 'package:heshamonganrateroute/controller/onbordingconroller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
 
    final isFirstLaunch = true;
    final onboardingController = OnboardingController();
    final initial =
        onboardingController.shouldShowOnboarding(isFirstLaunch: isFirstLaunch)
            ? Approute.onboarding
            : Approute.home;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Heshamaqlan App',
      initialRoute: initial,
      onGenerateRoute: HeshamaqlanRouter.onGenerateRoute,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0061A8)),
        useMaterial3: true,
      ),
    );
  }
}
